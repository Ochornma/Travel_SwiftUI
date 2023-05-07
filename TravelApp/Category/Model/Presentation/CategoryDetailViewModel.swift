//
//  CategoryDetailViewModel.swift
//  TravelApp
//
//  Created by Promise Ochornma on 07/05/2023.
//

import Foundation

class CategoryDetailViewModel: ObservableObject{
    
    @Published var places = [Places]()
    @Published var isLoading = false
    @Published var errorMessage: String? = nil
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    
}
