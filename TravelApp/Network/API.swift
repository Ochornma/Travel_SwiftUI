//
//  API.swift
//  TravelApp
//
//  Created by Promise Ochornma on 08/05/2023.
//

import Foundation
import Moya

enum API{
    case fetchCategory(params: [String:String])
}

extension API: TargetType {
    var baseURL: URL {
        guard let url = URL(string: "https://travel.letsbuildthatapp.com/travel_discovery/") else {
            fatalError("Base URL is invalid")
        }
        return url
        
    }
    
    var path: String {
        switch self{
        case .fetchCategory:
            return "category"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .fetchCategory:
            return .get
        }
    }
    
    var task: Moya.Task {
        switch self {
        case .fetchCategory(let params):
            return .requestParameters(parameters: params, encoding: URLEncoding.default)
        }
    }
    
    var headers: [String : String]? {
           return ["Content-Type": "application/json",
                   "Accept": "application/json",]
       }
    
    var validationType: ValidationType {
           return .successCodes
         }
    
    
}
