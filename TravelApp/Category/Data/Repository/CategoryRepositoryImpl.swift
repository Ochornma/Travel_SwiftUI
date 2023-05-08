//
//  CategoryRepositoryImpl.swift
//  TravelApp
//
//  Created by Promise Ochornma on 08/05/2023.
//

import Foundation
import Combine

class CategoryRepositoryImpl: CategoryRepository{
    private var cancellable = Set<AnyCancellable>()
    let network:NetworkingService
    
    init(network:NetworkingService) {
        self.network = network
    }
    
    func fetch(req: [String : String]) -> Future<[Places], Error> {
        
        let requestCancellable: Future<[PlacesDatum], Error> = network.request(.fetchCategory(params: req))
        
        return Future<[Places], Error>{ promise in
            requestCancellable.sink(receiveCompletion: {completion in
                guard case let .failure(error) = completion else { return }
                promise(.failure(error))
            }, receiveValue: {places in
                let data = places.map{
                    $0.toDomain()
                }
                promise(.success(places.map{
                    $0.toDomain()
                }))
            }).store(in: &self.cancellable)
        }
        
    }
    
    
}
