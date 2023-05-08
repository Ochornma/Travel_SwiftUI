//
//  CategoryRepository.swift
//  TravelApp
//
//  Created by Promise Ochornma on 08/05/2023.
//

import Foundation
import Combine


protocol CategoryRepository{
    func fetch(req: [String: String]) -> Future<[Places], Error>
}
