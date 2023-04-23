//
//  DestinationsView.swift
//  TravelApp
//
//  Created by Promise Ochornma on 23/04/2023.
//

import SwiftUI

struct DestinationsView: View {
    
    let destinations: [Destination] = [
        .init(name: "Paris", country: "France", imageName: "eiffel_tower", latitude: 48.855014, longitude: 2.341231),
        .init(name: "Tokyo", country: "Japan", imageName: "japan", latitude: 35.67988, longitude: 139.7695),
        .init(name: "New York", country: "US", imageName: "new_york", latitude: 40.71592, longitude: -74.0055),
    ]
    
    var body: some View {
        
        VStack{
            HStack{
                Text("Popular Destination")
                Spacer()
                Button("See All", action: {})
            }.padding([.top, .horizontal], 12)
                .foregroundColor(.black)
                .font(.system(size: 14))
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 8.0){
                    ForEach(destinations, id:  \.self) { destination in
                        VStack(alignment: .leading, spacing: 0){
                            Image(destination.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 125, height: 125)
                                .clipped()
                                .cornerRadius(4)
                                .padding([.top, .horizontal], 6)
                              
                             
                            Text(destination.name)
                                .font(.system(size: 12, weight: .semibold))
                                .padding(.horizontal, 6)
                               
                            Text(destination.country)
                                .font(.system(size: 12, weight: .semibold))
                                .padding(.horizontal, 6)
                                .padding(.bottom)
                             
                        }
                        .asCardView()
                           
                    }
                }

            }.padding(.horizontal, 12)
        }
    }
}


struct DestinationsView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationsView()
        ContentView()
    }
}
