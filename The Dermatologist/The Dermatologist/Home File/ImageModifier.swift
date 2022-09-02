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
            .clipShape(RoundedRectangle( cornerRadius: 15))
           
    }
}
