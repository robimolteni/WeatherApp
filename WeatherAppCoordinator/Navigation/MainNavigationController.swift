//
//  MainNavigationController.swift
//  WeatherAppCoordinator
//
//  Created by Molteni, Roberto on 29/11/2020.
//  Copyright © 2020 Molteni, Roberto. All rights reserved.
//

import Foundation
import UIKit


protocol CoordinatorNavigationControllerDelegate : class {
    func goToPreviousVC()
}
class MainNavigationController : UINavigationController {
    
    weak var swipeBackDelegate: CoordinatorNavigationControllerDelegate?

    func setupCustomBackButton(viewController: UIViewController) {
        viewController.navigationItem.hidesBackButton = true
        
        let button = CustomBackButton.initCustomBackButton(backButtonImage: UIImage(named: "back"), backButtonTitle: "Back", backButtonfont: UIFont(name: "Menlo-Bold", size: 15), backButtonTitleColor: .black)
        
        button.addTarget(self, action: #selector(actionBack(sender:)), for: .touchUpInside)
        
        viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
    
    }
    
    @objc private func actionBack(sender: UIBarButtonItem) {
        self.swipeBackDelegate?.goToPreviousVC()
    }
}
