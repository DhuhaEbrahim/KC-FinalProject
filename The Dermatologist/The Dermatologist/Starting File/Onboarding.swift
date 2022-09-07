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
            
            OnboardingPageView(imageName: "Onboarding1", width: 500, hight: 500, title: "Have a skin concern? Ask a dermatologist", description: "Do you want to consult a dermatologist but all clinics are busy and crowded ? \n Don't worry...We got you", showsDissmisButton: false, showOnboarding: $showOnboarding)
            
            OnboardingPageView(imageName: "Onboarding2", width: 470, hight: 400, title: "Ask a Dermatologist in the comfort of your home", description: "Take a picture of your skin condition, fill the form and send it to your dermatologist of choice", showsDissmisButton: false, showOnboarding: $showOnboarding)
            
            OnboardingPageView(imageName: "Onboarding3", width: 400, hight: 500, title: "Send and wait for response", description: "Your dermatologist will look after your case and send you a message with everything you need", showsDissmisButton: false, showOnboarding: $showOnboarding)
            
            OnboardingPageView(imageName: "Onboarding4", width: 400, hight: 400, title: "Get your medication", description: "You don't need to go to the pharmacy to get your medication, you can find all the pharmacies here.", showsDissmisButton: true, showOnboarding: $showOnboarding)
            
            
        }
        .tabViewStyle(PageTabViewStyle())
    }
}


struct OnboardingPageView: View {
    
    let imageName : String
    var width : CGFloat
    var hight : CGFloat
    let title : String
    let description : String
    let showsDissmisButton : Bool
    @Binding var showOnboarding : Bool
    
    var body: some View {
        ZStack {
            
            VStack{
                
                HStack {
                    Spacer()
                    Text("Swipe")
                    Image(systemName: "arrow.forward")
                }.padding()
                
                
                Image(imageName)
                    .resizable()
                    .frame(width: width , height: hight)
                    
                Text(title)
                    .padding()
                    .font(.custom("Rubik-Medium", size: 30))
                    .foregroundColor(Color("Dark"))
                    .multilineTextAlignment(.center)
                
                Text(description)
                    .font(.custom("Rubik-Regular", size: 20))
                    .foregroundColor(Color("Dark"))
                    .multilineTextAlignment(.center)
                 
                
                
                if showsDissmisButton {
                    
                    Button(action: {
                        
                        showOnboarding.toggle()
                        
                    }, label: {
                        
                        Text("Get started")
                            .foregroundColor(Color("Dark"))
                            .frame(width:300, height: 50)
                            .font(.custom("Rubik-Medium", size: 25))
                            .background(Color("Primary"))
                            .clipShape(Capsule())
                           
                    })
                }
                
               
                
            }.padding()
        }
    }
}
