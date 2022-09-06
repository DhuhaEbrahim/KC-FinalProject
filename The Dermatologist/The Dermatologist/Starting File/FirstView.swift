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
    
    @State var isAnimatedOne = false
    @State var isAnimatedTwo = false
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
                    NavigationLink(destination: SignInView(), isActive: $isAnimatedOne) {
                        
                        ComponentsView(title: "Sign in", isAnimated: $isAnimatedOne)
                    }
                    
                    // Creat Account Navigation Button
                    NavigationLink(destination: CreateAccountView(), isActive: $isAnimatedTwo) {
                        
                        ComponentsView(title: "Creat an account", isAnimated: $isAnimatedTwo)
                        
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
