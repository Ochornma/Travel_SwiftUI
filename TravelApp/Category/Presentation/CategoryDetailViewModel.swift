//
//  CategoryDetailViewModel.swift
//  TravelApp
//
//  Created by Promise Ochornma on 07/05/2023.
//

import Foundation
import Combine

class CategoryDetailViewModel: ObservableObject{
    
    @Published var places = [Places]()
    @Published var isLoading = false
    @Published var errorMessage: String? = nil
    
    private var cancellable = Set<AnyCancellable>()
    private var repo: CategoryRepository
    
    var name: String
    
    init(name: String) {
        self.name = name
        
        let network = NetworkingService()
        repo = CategoryRepositoryImpl(network: network)
        
        repo.fetch(req: ["name": name.lowercased()]).sink(receiveCompletion: {completion in 
            guard case let .failure(error) = completion else { return }
            print(error.localizedDescription)
            self.errorMessage = error.localizedDescription
        }, receiveValue: { places in
            self.places = places
        }).store(in: &cancellable)
    }
    
    
}
