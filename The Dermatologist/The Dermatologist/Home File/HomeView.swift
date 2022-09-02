//
//  HomeView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//

import SwiftUI

struct HomeView: View {
    
    let name : String
    var pharmacies = ["Pharmazone", "Aldawaeyaa", "Alhajery", "Almutawaa", "Boots", "Royal"]
    
    var body: some View {
        
        VStack(spacing: 40){
            HStack{
                Text("welcome \(name)")
                    .font(.custom("Rubik-Regular", size: 30))
                
                Spacer()
                
                NavigationLink(destination: NotificationsView(doctors: DoctorsInfoModel(fullName: "Ahmad Hasan", workPlace: "Pravate clinic", degree: "canada")))
                {
                    
                    Image(systemName: "bell").font(.system(size: 30))
                }
                
            }.padding()
            ScrollView{
                HStack{
                Text("Dermatologists")
                        .font(.custom("Rubik-Regular", size: 25))
                    
                    Spacer()
                    
                    NavigationLink( destination: AllDoctorsView() ){
                        Text("See All")
                            .font(.custom("Rubik-Regular", size: 17))
                    }
                    Image(systemName: "chevron.right")
                }.padding()
                
                ScrollView(.horizontal)
                {
                    HStack{
                        ForEach(doctorsInfo){
                            doctor in
                            VStack{
                                NavigationLink(destination: DoctorInfoView(personalInfo: doctor)) {
                                    Image(doctor.fullName)
                                        .resizable()
                                        
                                        .modifier(ImageModifier())
                                        
                                }
                                
                                Text(doctor.fullName).font(.custom("Rubik-Regular", size: 15))
                            }
                            
                        }
                    }
                    
                }
                
                Divider()
                
                HStack{
                Text("Pharmacies")
                        .font(.custom("Rubik-Regular", size: 25))
                    Spacer()
                    NavigationLink( destination: AllPharmaciesView() ){
                        Text("See All")
                            .font(.custom("Rubik-Regular", size: 17))
                    }
                    Image(systemName: "chevron.right")
                }.padding()
                ScrollView(.horizontal){
                    HStack{
                        ForEach(pharmacies, id: \.self){
                            pharmacy in
                            VStack{
                                Image(pharmacy)
                                    .resizable()
                                    .modifier(ImageModifier())
                                Text(pharmacy)
                            }
                        }
                    }
                }
                
                
                
                
                
                
                
            }
            
           SelectionBarView()
           
        }
        .navigationBarHidden(true)
        .foregroundColor(Color("Dark"))
        .background(Color("Secondary"))
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(name: "dhuha")
    }
}
