//
//  ComponentsView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 04/09/2022.
//

import SwiftUI

struct ComponentsView: View {
    
    @State var title : String
    @Binding var isAnimated : Bool
    
    var body: some View {
       
        Text(title)
            .frame(width: 300, height: 40)
            .font(.custom("Rubik-Medium", size: 20))
            .padding()
            .background(Color("Primary"))
            .cornerRadius(10)
            .opacity(isAnimated ? 2.0 : 1.0)
            .scaleEffect(isAnimated ? 1.5 : 1.0)
            .onTapGesture {
                          isAnimated = true
                        }
            .pressEvents {
                           // On press
                           withAnimation(.easeInOut(duration: 0.1)) {
                               isAnimated = true
                           }
                       } onRelease: {
                           withAnimation {
                               isAnimated = false
                           }
                           
                       }
    }
}

