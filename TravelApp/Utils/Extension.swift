//
//  Extension.swift
//  TravelApp
//
//  Created by Promise Ochornma on 23/04/2023.
//

import Foundation
import SwiftUI

extension View {
    func asCardView() -> some View {
        modifier(CardView())
    }
}

struct CardView: ViewModifier {
    
    @Environment(\.colorScheme) var colorScheme
    
    func body(content: Content) -> some View {
        content
            .background(Color("tileBackground"))
            .cornerRadius(5)
            .shadow(color: .init(.sRGB, white: 0.8, opacity: colorScheme == .light ? 1 : 0), radius: 4, x: 0.0, y: 2)
            .padding(.bottom)
    }
    
}
