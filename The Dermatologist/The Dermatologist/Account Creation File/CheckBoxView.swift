//
//  CheckBoxView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//

import SwiftUI

struct CheckBoxView: View {
    
    @Binding var checked: Bool
    
    var body: some View {
        
        Image(systemName: checked ? "checkmark.square.fill" : "square")
            .foregroundColor(checked ? Color("Dark") : Color.secondary)
            .onTapGesture {
                self.checked.toggle()
            }
    }
}


