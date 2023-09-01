//
//  openWeatheMapController.swift
//  weather-app
//
//  Created by kiumars on 8/31/23.
//

import Foundation


let apiKey : String = "c3c98e6e81504253d74455fa08d26558"

class OpenWeatherMapController : WebServiceController {
    func fetchWeatherData(city: String, completionHandler:@escaping (String?, WebServiceControllerError) -> Void) {
        let endPoint = "https://api.openweathermap.org/data/2.5/find?q=\(city)&units=imperial&appid=\(apiKey)"
        
        guard let safeURLString = endPoint.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed),
                let endpointURL = URL(string: safeURLString) else{
            completionHandler(nil,WebServiceControllerError.invalidURL(endPoint))
            return
        }
        let dataTask = URLSession.shared.dataTask(with: endpointURL){(data,response,error) in
            guard error == nil else {
                completionHandler(nil,WebServiceControllerError.forwarded(<#T##Error#>))
                return
            }
            guard let responsedata = data else {
                completionHandler(nil , WebServiceControllerError.invalidPayload(<#T##URL#>))
                return
            }
        }
        
    }
    
    
}
