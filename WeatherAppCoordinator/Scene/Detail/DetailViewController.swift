//
//  DetailViewController.swift
//  WeatherAppCoordinator
//
//  Created by Molteni, Roberto on 17/11/2020.
//  Copyright © 2020 Molteni, Roberto. All rights reserved.
//

import Foundation
import UIKit


protocol DetailViewControllerDelegate : class {
    
}
class DetailViewController : UIViewController {
    
    weak var delegate : DetailViewControllerDelegate?
    
    override func viewDidLoad() {
        //
    }
}
