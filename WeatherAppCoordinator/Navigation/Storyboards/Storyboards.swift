//
//  Storyboards.swift
//  WeatherAppCoordinator
//
//  Created by Molteni, Roberto on 17/11/2020.
//  Copyright © 2020 Molteni, Roberto. All rights reserved.
//

import Foundation
import UIKit

extension UIStoryboard {
    
    private static var main : UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
    
    private static var detail : UIStoryboard {
        return UIStoryboard(name: "Detail", bundle: nil)
    }
    
    static func instantiateGeneralViewController(delegate: GeneralViewControllerDelegate) -> GeneralViewController {
      let mainVC = main.instantiateViewController(withIdentifier: "generalViewController") as! GeneralViewController
      mainVC.delegateMain = delegate
      return mainVC
    }
    
    static func instantiateDetailWeatherViewController() -> DetailWeatherViewController {
        let weatherDetail = main.instantiateViewController(withIdentifier: "detailWeather") as! DetailWeatherViewController
        
        return weatherDetail
    }
    
    
    static func instantiateDetailViewController(delegate: DetailViewControllerDelegate) -> DetailViewController {
        let detailVC = detail.instantiateViewController(identifier: "detailViewController") as! DetailViewController
        detailVC.delegate = delegate
        return detailVC
    }
}
