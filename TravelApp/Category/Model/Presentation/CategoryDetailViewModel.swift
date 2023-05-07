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
        let places = [Places(name: "Lagos", thumbnail: "https://dclmcloud.s3.amazonaws.com/img/dclm_radio.png"),
                      Places(name: "Lagos", thumbnail: "https://dclmcloud.s3.amazonaws.com/img/dclm_radio.png"),
                      Places(name: "Lagos", thumbnail: "https://dclmcloud.s3.amazonaws.com/img/dclm_radio.png"),
                      Places(name: "Lagos", thumbnail: "https://dclmcloud.s3.amazonaws.com/img/dclm_radio.png"),
                      Places(name: "Lagos", thumbnail: "https://dclmcloud.s3.amazonaws.com/img/dclm_radio.png")]
        self.places = places
    }
    
    
}
/**
 Places(name: "Lagos", thumbnail: "https://letsbuildthatapp-videos.s3.us-west-2.amazonaws.com/42eb62ad-8f4a-4fdd-8ed2-3a7614a2f9e2"),
               Places(name: "Lagos", thumbnail: "https://letsbuildthatapp-videos.s3.us-west-2.amazonaws.com/42eb62ad-8f4a-4fdd-8ed2-3a7614a2f9e2"),
               Places(name: "Lagos", thumbnail: "https://letsbuildthatapp-videos.s3.us-west-2.amazonaws.com/42eb62ad-8f4a-4fdd-8ed2-3a7614a2f9e2"),
               Places(name: "Lagos", thumbnail: "https://letsbuildthatapp-videos.s3.us-west-2.amazonaws.com/42eb62ad-8f4a-4fdd-8ed2-3a7614a2f9e2"),
               Places(name: "Lagos", thumbnail: "https://letsbuildthatapp-videos.s3.us-west-2.amazonaws.com/42eb62ad-8f4a-4fdd-8ed2-3a7614a2f9e2")
 */
