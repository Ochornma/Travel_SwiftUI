//
//  CategoryDetailView.swift
//  TravelApp
//
//  Created by Promise Ochornma on 06/05/2023.
//

import SwiftUI

struct CategoryDetailView: View {
    
    @ObservedObject private var vm: CategoryDetailViewModel
    let name: String
    init(name: String) {
        self.name = name
        self.vm = CategoryDetailViewModel(name: name)
    }
    
    var body: some View {
            List{
                ForEach(vm.places, id:\.self) { place in
                    CategoryDetailWidget(place: place)
                    
                        .listRowBackground(Color.clear)
                            .listRowSeparator(.hidden)
                   }
            }.scrollIndicators(.hidden)
            .listStyle(PlainListStyle())
    }
}

struct CategoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            CategoryDetailView(name: "promise")
        }
    }
}
