//
//  ImageModifier.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//

import Foundation
import SwiftUI

struct ImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            
            .frame(width: 200, height: 200)
            .border(Color("Dark"))
            .overlay(
                RoundedRectangle(cornerRadius: 15)
            .stroke(Color("Primary"), lineWidth: 5))
            .cornerRadius(15)
            .shadow(radius: 3)
            
            
           
    }
}
