//
//  ComponentsView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 04/09/2022.
//

import SwiftUI

struct ComponentsView: View {
    
    @State var title : String
    
    var body: some View {
       
        Text(title)
            .frame(width: 300, height: 40)
            .font(.custom("Rubik-Medium", size: 20))
            .padding()
            .background(Color("Primary"))
            .cornerRadius(10)
    }
}

