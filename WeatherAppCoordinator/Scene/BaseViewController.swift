//
//  BaseViewController.swift
//  WeatherAppCoordinator
//
//  Created by Molteni, Roberto on 29/11/2020.
//  Copyright © 2020 Molteni, Roberto. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, CoordinatorNavigationControllerDelegate {
    
    func goToPreviousVC() {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.setupNavigationController()
    }
    
    private func setupNavigationController() {
          if let navigationController = self.navigationController as? MainNavigationController {
              navigationController.swipeBackDelegate = self
          }
      }
}
