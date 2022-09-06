//
//  CreateAccountView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//

import SwiftUI

struct CreateAccountView: View {
    
    @State var userName = ""
    @State var email = ""
    @State var password = ""
    @State var confirmPassword = ""
    @State var alert = ""
    @State var iscreated = false
    @State var secureField = true
    @State var ischecked = false
    @State var alertSign = ""
    
    var body: some View {
        
        ZStack {
            Color("Secondary").ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 15) {
                
                Text("Create an account") .font(.custom("Rubik-Medium", size: 35))
                Spacer()
                
                
                accountInfoView(userInfo: "Full name", userInfoBinding: $userName)
                
                accountInfoView(userInfo: "Email", userInfoBinding: $email)
                
                Text("Password")
                    .font(.custom("Rubik-Regular", size: 20))
                SecureFieldView(issecureField: $secureField, password: $password)
                
                Text("Confirm password")
                    .font(.custom("Rubik-Regular", size: 20))
                SecureFieldView(issecureField: $secureField, password: $confirmPassword)
               
                VStack{
                    Spacer()
                    HStack {
                        Image(systemName: alertSign)
                        Text(alert)
                            .font(.custom("Rubik-Light", size: 20))
                    }
                    Spacer()
                    
                    HStack {
                        
                        
                        HStack {
                            Text("Agree to our")
                                .font(.custom("Rubik-Regular", size: 20))
                            // Link
                            Link("terms of service ?", destination: URL(string: "https://www.example.com/TOS.html")!).font(.custom("Rubik-Medium", size: 20))
                        }
                        
                        
                        CheckBoxView(checked: $ischecked)
                        Spacer()
                        
                        
                        
                    }
                    Spacer()
                    HStack{
                        
                        Spacer()
                        NavigationLink(destination: HomeView(name: userName).navigationBarBackButtonHidden(true), isActive: $iscreated)  {EmptyView()}
                        
                        
                        Button("Create Account") {
                            
                            if password != confirmPassword {
                                alertSign = "exclamationmark.circle.fill"
                                alert = "Please make sure to enter the same password"
                            }
                            
                            else if userName == "" || email == "" || password == "" || confirmPassword == "" {
                                alertSign = "exclamationmark.circle.fill"
                                alert = " Please enter all you information"
                                
                            } else if ischecked != true {
                                alertSign = "exclamationmark.circle.fill"
                                alert = "please agree to our terms and conditions"
                            }
                            
                            else {
                                iscreated = true
                            }
                            
                        }
                        .padding()
                        .frame(width: 300, height: 50)
                        .font(.custom("Rubik-Medium", size: 20))
                        .background(Color("Primary"))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        Spacer()
                    }
                }
                
            }.padding()
        }.foregroundColor(Color("Dark"))
    }
}


struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
