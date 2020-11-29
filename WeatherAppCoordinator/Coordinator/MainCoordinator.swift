//
//  MainCoordinator.swift
//  WeatherAppCoordinator
//
//  Created by Molteni, Roberto on 17/11/2020.
//  Copyright © 2020 Molteni, Roberto. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator : Coordinator {
    
    private let navController : MainNavigationController
    var detailCoordinator : DetailCoordinator
    
    init(navController : MainNavigationController) {
        self.navController = navController
        detailCoordinator = DetailCoordinator(navController: navController)
    }
    
    func start() {
        let mainViewController = UIStoryboard.instantiateGeneralViewController(delegate: self)
        navController.pushViewController(mainViewController, animated: true)
    }
}

extension MainCoordinator : GeneralViewControllerDelegate {
    
    func goToDetail() {
        let detailWeatherViewController = UIStoryboard.instantiateDetailWeatherViewController()
        navController.setupCustomBackButton(viewController: detailWeatherViewController)
        navController.pushViewController(detailWeatherViewController, animated: true)
        
    }
    
    //go to next View Controller
    func goToDetailStoryBoard() {
        detailCoordinator.start()
    }
    
}
