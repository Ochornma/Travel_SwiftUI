//
//  Categories.swift
//  TravelApp
//
//  Created by Promise Ochornma on 23/04/2023.
//

import SwiftUI

struct CategoriesView: View {
    
    let categories: [Category] = [
        .init(name: "Art", imageName: "paintpalette.fill"),
        .init(name: "Sports", imageName: "sportscourt.fill"),
        .init(name: "Live Events", imageName: "music.mic"),
        .init(name: "Food", imageName: "tray.fill"),
        .init(name: "History", imageName: "books.vertical.fill")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            
            HStack {
                ForEach(categories, id: \.self) { category in
                    NavigationLink(destination: NavigationLazyView(CategoryDetailView(name: category.name)),
                                   label: {
                        
                        VStack(alignment: .center){
                            Image(systemName: category.imageName)
                                .frame(width: 64, height: 64)
                                .background(Color.white)
                                .cornerRadius(32)
                                .foregroundColor(.orange)
                                
                            Text(category.name)
                                .foregroundColor(.white)
                                .font(.system(size: 12))
                                .multilineTextAlignment(.center)
                        }.frame(width: 68)
                    })
                    
                        

                }
            }
            .padding(.horizontal)
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
        
        ContentView()
    }
}

