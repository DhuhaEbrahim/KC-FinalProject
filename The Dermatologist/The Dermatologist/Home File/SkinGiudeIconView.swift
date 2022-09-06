//
//  SkinGiudeIconView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 06/09/2022.
//

import Foundation
import SwiftUI
struct SkinGuideIconView: View {
    private let width: CGFloat = 200
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack {
               
                ZStack {
                NavigationLink(destination: SkinGuideView()) {
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                               .fill(Color("Primary"))
                    
                               .frame(width: width, height: 50)
                               .offset(x: -width / 2)
                               .clipped()
                               .offset(x: width / 4)
                               .frame(width: width / 2)
                               .shadow(radius: 5)

                               
                                
                }
                
               
                    Image("Skin Guide")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 45, height: 45)
                        .padding()
                        
                }
               Spacer()
            }
               
        }
        }

}
