//
//  ApplicationCoordinator.swift
//  WeatherAppCoordinator
//
//  Created by Molteni, Roberto on 17/11/2020.
//  Copyright © 2020 Molteni, Roberto. All rights reserved.
//

import Foundation
import UIKit

class ApplicationCoordinator : Coordinator {
    
    private let navController : MainNavigationController
    let mainCoordinator : MainCoordinator
    
    init(navController : MainNavigationController) {
        self.navController = navController
        mainCoordinator = MainCoordinator(navController: navController)
    }
    
    func start() {
        mainCoordinator.start()
    }
}
