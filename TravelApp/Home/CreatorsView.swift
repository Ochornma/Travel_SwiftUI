//
//  CreatorsView.swift
//  TravelApp
//
//  Created by Promise Ochornma on 23/04/2023.
//

import SwiftUI

struct CreatorsView: View {
    
    let users: [User] = [
        .init(id: 0, name: "Amy Adams", imageName: "amy"),
        .init(id: 1, name: "Billy", imageName: "billy"),
        .init(id: 2, name: "Sam Smith", imageName: "sam"),
    ]
    
    var body: some View {
        VStack{
            HStack{
                Text("Trending Creators")
                Spacer()
                Button("See All", action: {})
            }.padding([.top, .horizontal], 12)
                .foregroundColor(.black)
                .font(.system(size: 14))
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 8){
                    ForEach(users, id: \.self) { user in
                        VStack(alignment: .center){
                            Image(user.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 64, height: 64)
                                .cornerRadius(32)
                                
                            Text(user.name)
                                .font(.system(size: 12))
                                .multilineTextAlignment(.center)
                        }.frame(width: 68)
                    }
                }
            }.padding(.horizontal, 12)
        }
    }
}

struct CreatorsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        CreatorsView()
    }
}
