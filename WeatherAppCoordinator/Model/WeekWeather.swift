//
//  WeekWeather.swift
//  WeatherAppCoordinator
//
//  Created by Molteni, Roberto on 15/11/2020.
//  Copyright © 2020 Molteni, Roberto. All rights reserved.
//

import Foundation


struct Weather : Codable {
    
    let id : Int
    let main : String
    let description : String
    let icon: String?
}

struct CurrentWeather : Codable {
    
    let dt : UInt64 //long
    let weather : [Weather]
    
}

struct WeekWeather : Codable {
    
    let lat : Double
    let lon : Double
    let timezone: String
    let current : CurrentWeather
    let daily: [Daily]
    
}

struct Daily : Codable {
    let dt: UInt64
    let sunrise: UInt64
    let sunset: UInt64
    let weather : [Weather]
}


