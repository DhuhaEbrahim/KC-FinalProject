//
//  AccountInfoView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//


import SwiftUI

struct accountInfoView: View {
    
    @State var userInfo : String
    @Binding var userInfoBinding : String
    
    var body: some View {
        
            Text(userInfo)
            .font(.custom("Rubik-Regular", size: 20))
            TextField("", text: $userInfoBinding)
                .padding()
                .frame(width: 340, height: 50)
                .border(Color("Primary"), width: 3)
            
    }
}

