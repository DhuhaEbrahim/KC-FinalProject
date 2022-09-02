//
//  SelectionBarView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//


import SwiftUI


struct SelectionBarView: View {
    var body: some View {
        HStack{
            NavigationLink(destination: SkinGuideView()) {
                SelectionBarIconView(icon: "Skin Guide", iconName: "Skin guide")
            }
            
            Spacer()
            
            NavigationLink(destination: ProfileView()) {
                SelectionBarIconView(icon: "Profile", iconName: "Profile")
            }
            
            
            
            
        }.padding()
            .frame(width: 370, height: 60)
            .background(Color("Primary"))
            .foregroundColor(Color("Dark"))
            .clipShape(Capsule())
            
        
            
    }
}






struct SelectionBarIconView: View {
    @State var icon : String
    @State var iconName : String
    var body: some View {
        
        VStack(spacing: 0.5){
            Image(icon).resizable().scaledToFit().frame(width: 35, height: 35)
            Text(iconName)
                .font(.custom("Rubik-Regular", size: 15))
        }.padding().frame(width: 90, height: 40)
    }
}



