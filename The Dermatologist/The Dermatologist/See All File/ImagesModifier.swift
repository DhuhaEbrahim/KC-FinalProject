//
//  ImagesModifier.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 04/09/2022.
//

import Foundation
import SwiftUI

struct ImagesModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            
        .frame(width: 170, height: 200)
        .border(Color("Dark"))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
        .stroke(Color("Primary"), lineWidth: 5))
        .cornerRadius(10)
        .padding()
        .shadow(radius: 3)
    
    }
}

