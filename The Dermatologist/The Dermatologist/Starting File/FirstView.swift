//
//  FirstView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 28/08/2022.
//

import SwiftUI

struct FirstView: View {
   
    // To Show Oboarding Only Once
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
                    Image("logo")
                        .resizable()
                        .frame(width: 250, height: 250)
                        
                    Spacer()
                    
                    // Sign In Navigation Button
                    NavigationLink(destination: SignInView()) {
                        withAnimation(.easeInOut(duration: 1)) {
                        ComponentsView(title: "Sign in")
                        }
                    }
                    
                    // Creat Account Navigation Button
                    NavigationLink(destination: CreateAccountView()) {
                        withAnimation(.easeInOut(duration: 1)) {
                        ComponentsView(title: "Creat an account")
                        }
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
            .previewDevice("iPhone 12 Pro")
    }
}
