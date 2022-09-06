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
            
            // Background Color
            ZStack {
                Color("Secondary")
                    .ignoresSafeArea()
                
                VStack {
                    
                    // Welcoming Text
                    Text("Welcome to \n The Dermatologist")
                        .font(.custom("Rubik-Bold", size: 30))
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    // Log In Navigation Button
                    NavigationLink(destination: SignInView()) {
                        
                        ComponentsView(title: "Sign in")
                    }
                    
                    // Creat Account Navigation Button
                    NavigationLink(destination: CreateAccountView()) {
                        
                        ComponentsView(title: "Creat an account")
                        
                    }
                    
                }
            }
            .foregroundColor(Color("Dark"))
            
            
            
            
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
