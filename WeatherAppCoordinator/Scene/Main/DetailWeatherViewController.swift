//
//  File.swift
//  WeatherAppCoordinator
//
//  Created by Molteni, Roberto on 28/11/2020.
//  Copyright © 2020 Molteni, Roberto. All rights reserved.
//

import Foundation
import UIKit

class DetailWeatherViewController : BaseViewController {
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
  
    
    @IBAction func goBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)

    }
}
