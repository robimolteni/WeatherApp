//
//  WeatherFetcher.swift
//  WeatherAppCoordinator
//
//  Created by Molteni, Roberto on 15/11/2020.
//  Copyright © 2020 Molteni, Roberto. All rights reserved.
//

import Foundation
import Alamofire

class WeatherFetcher : WeatherFetcherAPI {
    
    let apiKey = "81b03f6641bcb5f8775b651ec5472985"
    let basicURL = "https://api.openweathermap.org/data/2.5/onecall"
    
    func requestWeeklyWeather(completionHandler: @escaping (DataResponse<WeekWeather, AFError>) -> Void) {
        
        let queryRequest = ["lat":"39.08","lon":"-94.58","appid":apiKey]
        
        AF.request(basicURL, parameters: queryRequest).responseDecodable {
            (response : DataResponse<WeekWeather,AFError>) in
            completionHandler(response)
        }
    }
}

extension Request {
    public func debugLog() -> Self {
         #if DEBUG
            debugPrint(self)
         #endif
         return self
      }
}
