//
//  SignInView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//

import SwiftUI

struct SignInView: View {
    
    @State var email:String = ""
    @State var password:String = ""
    @State var issecureField: Bool = true
    @State private var isSignedIn = false
    @State var alert: String = ""
    
    
    var body: some View {
        
        // Background Color
        ZStack {
            Color("Secondary").ignoresSafeArea()
            
            
            VStack(alignment: .leading, spacing: 20) {
                
            Text("Sign in")
            .font(.custom("Rubik-Medium", size: 40))
                
                
                
                // Email
                accountInfoView(userInfo: "Email", userInfoBinding: $email)
             
            // Password
            Text("password")
            .font(.custom("Rubik-Regular", size: 20))
                
            SecureFieldView(issecureField: $issecureField, password: $password)
            
            
            Text("\(alert)")
           
               
                NavigationLink(destination: HomeView(name: "dhuha")
                    .navigationBarBackButtonHidden(true), isActive: $isSignedIn)  {EmptyView()}
                HStack{
                    
                    Spacer()
                    
            // Next Button
            Button("Next") {
               
                if email == "Dhuha.ebrahim" && password == "12345" {
                    isSignedIn = true
                    
                } else if email == ""  || password == "" {
                    alert = "please enter your email and password"}
               
                else {
                   alert = "your email or password is wrong"
                }
            }
            .padding()
            .frame(width: 200, height: 50)
            .font(.custom("Rubik-Medium", size: 25))
            .background(Color("Primary"))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
                    Spacer()
                }
        }
            .padding()
        
        }.foregroundColor(Color("Dark"))
            
           
    
}
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
            .previewDevice("iPhone 13")
    }
}
