//
//  MainViewController.swift
//  WeatherAppCoordinator
//
//  Created by Molteni, Roberto on 15/11/2020.
//  Copyright © 2020 Molteni, Roberto. All rights reserved.
//

import UIKit
import AlamofireImage

protocol GeneralViewControllerDelegate : AnyObject {
    func goToDetailStoryBoard()
    func goToDetail()
}

final class GeneralViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.delegate = self
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { }
    
    weak var delegateMain : GeneralViewControllerDelegate?
    
    var weekWeather : WeekWeather?

    override func viewDidLoad() {
        super.viewDidLoad()
        print("load superView")
        // Do any additional setup after loading the view.
        let wetfetch = WeatherFetcher()
        
        wetfetch.requestWeeklyWeather(
            completionHandler: { (response) in
            switch response.result {
            case .success(let forecast):
                print("success")
                self.weekWeather = forecast
                self.tableView.reloadData()
            
            case .failure(let message):
                print(message)
            }
        })
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.weekWeather?.daily.count ?? 0
       }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "singleCell", for: indexPath) as! WeatherDayCell
        cell.dayOfTheWeekLabel.text = weekWeather?.daily[indexPath.row].weather[0].main
        let path = "https://openweathermap.org/img/wn/\(weekWeather?.daily[indexPath.row].weather[0].icon ?? "").png"
        print(path ?? "")
        if let imageURL = URL(string: path) {
            cell.weatherConditionImage.af_setImage(withURL: imageURL, placeholderImage : UIImage())
        }
        
        return cell
       }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegateMain?.goToDetail()
    }
}

