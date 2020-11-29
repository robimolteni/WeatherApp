//
//  WeatherFetcherAPI.swift
//  WeatherAppCoordinator
//
//  Created by Molteni, Roberto on 29/11/2020.
//  Copyright © 2020 Molteni, Roberto. All rights reserved.
//

import Foundation
import Alamofire

protocol WeatherFetcherAPI {
    
    func requestWeeklyWeather(completionHandler: @escaping (DataResponse<WeekWeather, AFError>) -> Void)
    
}
