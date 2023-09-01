//
//  WeatherViewModel.swift
//  weather-app
//
//  Created by kiumars on 9/1/23.
//

import Foundation

class WeatherViewModel : ObservableObject {
    private let weatherService = OpenWeatherMapController()
    
    @Published var weatherInfo : String = ""
    func fetch(city:String){
        weatherService.fetchWeatherData(city: city, completionHandler: {
            (info,error) in guard error == nil,
                                  let weatherInfo = info else {
                DispatchQueue.main.async {
                    self.weatherInfo = "could not get weather info for, \(city)"
                }
                return
            }
            DispatchQueue.main.async {
                self.weatherInfo = weatherInfo
            }
        })
        
    }
}
