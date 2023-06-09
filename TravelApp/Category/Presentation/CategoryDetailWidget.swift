//
//  CategoryDetailWidget.swift
//  TravelApp
//
//  Created by Promise Ochornma on 07/05/2023.
//

import SwiftUI
import Kingfisher

struct CategoryDetailWidget: View {
    let place: Places
    
    init(place: Places) {
        self.place = place
    }
    var body: some View {
        ZStack {
            VStack (alignment: .leading, spacing:0){
                KFImage(URL(string: place.thumbnail))
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width - 60, height: 300)
                   
                Text(place.name)
                    .padding()
            }.padding()
        .asCardView()
        }
    }
}

struct CategoryDetailWidget_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetailWidget(place: .init(name: "Lagos", thumbnail: "https://dclmcloud.s3.amazonaws.com/img/dclm_radio.png"))
    }
}
