//
//  ContentView.swift
//  TravelApp
//
//  Created by Promise Ochornma on 23/04/2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var name: String = ""
    
    var body: some View {
        //zstack for position on top of each other
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9882131219, green: 0.6823856831, blue: 0.2509839535, alpha: 1)), Color(#colorLiteral(red: 0.996080339, green: 0.446325405, blue: 0.2697934847, alpha: 1))]), startPoint: .top, endPoint: .center)
                .ignoresSafeArea()
            
            Color(ColorStrings.background)
            //offset to leave a height above
                .offset(y: 400)
            
            ScrollView {
                //heading
                HStack{
                    Text("Discover")
                        .fontWeight(.bold)
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                    
                    Spacer()

                }.padding(.horizontal)
                
                //search view
                
                HStack {
                    Image(systemName: "magnifyingglass")
                        .padding(.leading, 8)
                    
                    TextField("Where do you want to go?", text: $name)
                        .frame(height: 54)
                    
                    Spacer()
                        
                }
                
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(.white)
                .background(Color(.init(white: 1, alpha: 0.3)))
                .cornerRadius(10)
                .padding(16)
                
                CategoriesView()
                
                VStack{
                    DestinationsView()
                    PopularPlacesView()
                    CreatorsView()
                       
                }.background(Color(ColorStrings.background))
                    .cornerRadius(20)
                    .padding(.top, 30)
                  
                
                
            }
                .padding(.top, 30)
                
            
            
            
            
        }
    }




}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

