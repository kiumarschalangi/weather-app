//
//  webServiceController.swift
//  weather-app
//
//  Created by kiumars on 8/31/23.
//

import Foundation


public enum WebServiceControllerError : Error{
    case invalidURL(String)
    case invalidPayload(URL)
    case forwarded(Error)
    
}

public protocol WebServiceController{
    
    
    func fetchWeatherData(city : String , completionHandler:
                          @escaping (String?,WebServiceControllerError)->Void)
}
