//
//  Navigation.swift
//  TravelApp
//
//  Created by Promise Ochornma on 08/05/2023.
//

import Foundation
import SwiftUI


struct NavigationLazyView<Content: View>: View {
    
    let build: () -> Content
    
    init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }
    
    var body: Content {
        build()
    }
}
