//
//  DetailCoordinator.swift
//  WeatherAppCoordinator
//
//  Created by Molteni, Roberto on 17/11/2020.
//  Copyright © 2020 Molteni, Roberto. All rights reserved.
//

import Foundation
import UIKit

class DetailCoordinator : Coordinator {
    
    var navController : MainNavigationController
    
    init(navController : MainNavigationController) {
        self.navController = navController
    }
    
    func start() {
        let detailViewController = UIStoryboard.instantiateDetailViewController(delegate: self)
        navController.pushViewController(detailViewController, animated: true)
    }
}

extension DetailCoordinator : DetailViewControllerDelegate {
    
}
