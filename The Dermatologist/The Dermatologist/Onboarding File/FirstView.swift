//
//  FirstView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 28/08/2022.
//

import SwiftUI

struct FirstView: View {
    
    @AppStorage("_showOnboarding") var showOnboarding = true
    
    var body: some View {
        NavigationView {
            
            
               
            ZStack {
                Color("Secondary").ignoresSafeArea()
                VStack{
                        
                    Text("welcme to \n The Dermatologist")
                        .font(.custom("Rubik-Bold", size: 30))
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    NavigationLink(destination: SignInView()){
                    
                        Text("Log in").frame(width: 300, height: 40).font(.custom("Rubik-Medium", size: 20)).padding().background(Color("Primary")).cornerRadius(15)
                    }
                    
                            NavigationLink(destination: CreateAccountView()){
                                Text("Create an account")
                                    .frame(width: 300, height: 40)
                                    .font(.custom("Rubik-Medium", size: 20)).padding().background(Color("Primary")).cornerRadius(15)
                                
                            }
                         
                }
            }.foregroundColor(Color("Dark"))
            
            
            
            
        }
        .fullScreenCover(isPresented: $showOnboarding, content: { OnboardingView(showOnboarding: $showOnboarding)
            
        })
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
            .previewDevice("iPhone 13")
    }
}
