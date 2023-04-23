//
//  PopularPlacesView.swift
//  TravelApp
//
//  Created by Promise Ochornma on 23/04/2023.
//

import SwiftUI

struct PopularPlacesView: View {
    
    let restaurants: [Restaurant] = [
        .init(name: "Japan's Finest Tapas", imageName: "tapas"),
        .init(name: "Bar & Grill", imageName: "bar_grill"),
    ]
    
    var body: some View {
        
        VStack{
            HStack{
                Text("Popular Place to Eat")
                Spacer()
                Button("See All", action: {})
            }.padding([.top, .horizontal], 12)
                .foregroundColor(.black)
                .font(.system(size: 14))
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 8.0){
                    ForEach(restaurants, id: \.self) { restaurant in
                        HStack(alignment: .center, spacing: 10){
                            Image(restaurant.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60)
                                .cornerRadius(4)
                                .clipped()
                                .padding(.leading, 6)
                                .padding(.vertical, 6)
                            
                            VStack(alignment: .leading, spacing: 6){
                                HStack {
                                    Text(restaurant.name)
                                    Spacer()
                                    Button(action: {}, label: {
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(.gray)
                                    })
                                    
                                }
                                HStack {
                                    Image(systemName: "star.fill")
                                    Text("4.7 • Sushi • $$")
                                }
                                
                                Text("Tokyo Japan")
                            }.font(.system(size: 12, weight: .semibold))
                            
                        }.frame(width: 250)
                            .asCardView()
                        
                    }
                }
            }.padding(.horizontal, 12)
        }
    }
}

struct PopularPlacesView_Previews: PreviewProvider {
    static var previews: some View {
        PopularPlacesView()
        ContentView()
    }
}
