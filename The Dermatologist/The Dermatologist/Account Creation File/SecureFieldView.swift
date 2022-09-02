//
//  SecureFieldView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//


import SwiftUI

struct SecureFieldView: View {
    
    @Binding var issecureField : Bool
    @Binding var password : String
    
    var body: some View {
        
        HStack{
            
            if issecureField {
                SecureField("", text: $password)
                
            }
            else{
                TextField("", text: $password)
            }
        }  .padding()
            .frame(width: 340, height: 50)
            .border(Color("Primary"), width: 3)
            .overlay(alignment: .trailing) {
                Image(systemName: issecureField ? "eye.slash": "eye").padding()
                    .onTapGesture {
                        issecureField.toggle()
                    }
            }
    }
}
