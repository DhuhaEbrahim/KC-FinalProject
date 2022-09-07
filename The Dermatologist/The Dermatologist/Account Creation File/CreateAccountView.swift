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
                        
                        
                        Button{
                            withAnimation(.easeInOut(duration: 1)) {
                            if password != confirmPassword {
                                alertSign = "exclamationmark.circle.fill"
                                alert = "Please make sure to enter the same password"
                            }
                            
                            else if userName == "" || email == "" || password == "" || confirmPassword == "" {
                                alertSign = "exclamationmark.circle.fill"
                                alert = " Please enter all your information"
                                
                            } else if ischecked != true {
                                alertSign = "exclamationmark.circle.fill"
                                alert = "please agree to our terms of service"
                            }
                            
                            else {
                                iscreated = true
                            }
                            }
                        } label: {
                            withAnimation(.easeInOut(duration: 1)) {
                            Text("Next")
                                .padding()
                                .frame(width: 200, height: 50)
                                .font(.custom("Rubik-Medium", size: 25))
                                .background(Color("Primary"))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow(radius: 5)
                            }

                        }
                        .padding()
                 
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
