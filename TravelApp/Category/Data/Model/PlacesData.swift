//
//  PlacesData.swift
//  TravelApp
//
//  Created by Promise Ochornma on 08/05/2023.
//

import Foundation

// MARK: - PlacesDatum
struct PlacesDatum: Codable {
    let id: Int
    let name, country, description: String
    let thumbnail: String
    let photos: [String]
    
    func toDomain() -> Places{
       return Places(name: name, thumbnail: thumbnail)
    }
}



typealias PlacesData = [PlacesDatum]

