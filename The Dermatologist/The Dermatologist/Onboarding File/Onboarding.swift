//
//  Onboarding.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//

import Foundation
import SwiftUI

struct OnboardingView: View {
    
    @Binding var showOnboarding : Bool
    
    var body: some View {
        TabView {
            OnboardingPageView(imageName: "Onboarding1", description: "Whats your skin concern ? \n Ask a dermatologist !", showsDissmisButton: false, showOnboarding: $showOnboarding)
            
            OnboardingPageView(imageName: "Onboarding2", description: "Take a picture of your skin condition, Fill the form and send it to your dermatologist of choice", showsDissmisButton: false, showOnboarding: $showOnboarding)
            
            OnboardingPageView(imageName: "Onboarding3", description: "Your dermatologist will look after your case and send you a message with all the information you need", showsDissmisButton: true, showOnboarding: $showOnboarding)
            
        }
        .tabViewStyle(PageTabViewStyle())
    }
}


struct OnboardingPageView: View {
    
    let imageName : String
    let description : String
    let showsDissmisButton : Bool
    @Binding var showOnboarding : Bool
    
    var body: some View {
        ZStack {
           
            VStack{
                Image(imageName).resizable().scaledToFit().frame(width: 400, height: 400)
               
                Text(description)
                    .font(.custom("Rubik-Regular", size: 30))
                    .foregroundColor(Color("Dark"))
                if showsDissmisButton {
                    Button(action: {
                        showOnboarding.toggle()
                    }, label: {
                        Text("Lets Get Started !")
                            .frame(width:300, height: 50)
                            .background(Color("Primary"))
                    })
                }
            }.padding()
        }
    }
}
