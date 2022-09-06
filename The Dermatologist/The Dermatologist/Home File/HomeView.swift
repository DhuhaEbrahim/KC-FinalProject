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
        
        VStack(spacing: 40) {
            HStack{
                Text("Welcome \(name)")
                    .font(.custom("Rubik-Regular", size: 30))
                
                Spacer()
                
                NavigationLink(destination: NotificationsView(doctors: DoctorsInfoModel(fullName: "Ahmad Hasan", workPlace: "Private clinic - Bella clinic", degree: "Completed Denver residency program and earned state mandated certifications. \n Master in Dermatology. \n University of DenverCity.")))
                {
                    Image(systemName: "bell.fill")
                    .font(.system(size: 25))
                    .frame(width: 50, height: 50)
                    .background(Color("Primary"))
                    .clipShape(Circle())
                    
                }
                NavigationLink(destination: SkinGuideView()) {
                    Image(systemName: "person.fill")
                    .font(.system(size: 25))
                    .frame(width: 50, height: 50)
                    .background(Color("Primary"))
                    .clipShape(Circle              ())
                }
                
            }.padding()
            
            ScrollView(.vertical,showsIndicators: false) {
                
                AutoScrollView()
                
                Divider()
                
                HStack{
                    
                Text("Dermatologists")
                        .font(.custom("Rubik-Regular", size: 25))
                    
                    Spacer()
                    
                    NavigationLink(destination: AllDoctorsView()) {
                        Text("See All")
                            .font(.custom("Rubik-Regular", size: 17))
                    }
                    Image(systemName: "chevron.right")
                }.padding()
                
                ScrollView(.horizontal)
                {
                    HStack {
                        ForEach(doctorsInfo) {
                            doctor in
                            VStack {
                                NavigationLink(destination: DoctorInfoView(personalInfo: doctor)) {
                                    Image(doctor.fullName)
                                        .resizable()
                                        .modifier(ImageModifier())
                                        
                                        
                                }
                                
                                Text(doctor.fullName).font(.custom("Rubik-Regular", size: 15))
                            }
                            
                        }
                    }.padding()
                    
                }
                
                Divider()
                
                HStack {
                    Text("Pharmacies")
                        .font(.custom("Rubik-Regular", size: 25))
                    Spacer()
                    NavigationLink( destination: AllPharmaciesView() ){
                        Text("See All")
                            .font(.custom("Rubik-Regular", size: 17))
                    }
                    Image(systemName: "chevron.right")
                }.padding()
                
                
                ScrollView(.horizontal) {
                    
                    HStack() {
                        
                        ForEach(pharmacies, id: \.self) {
                            pharmacy in
                            
                            VStack {
                                
                                Image(pharmacy)
                                    .resizable()
                                    .modifier(ImageModifier())
                                Text(pharmacy)
                            }
                        }
                    }
                }
                
            }
                
            HStack {
                
                NavigationLink(destination: SkinGuideView()) {
                    
                            Image("Skin Guide")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40, height: 40)
                                .background(Color("Primary"))
                                
                                
                }
                Spacer()
            }.padding()
                    
               
                
                
            
            
            
           
        }
        .navigationBarHidden(true)
        .foregroundColor(Color("Dark"))
        .background(Color("Secondary"))
        .edgesIgnoringSafeArea([.bottom])


        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(name: "dhuha")
            .previewDevice("iPhone 12")
    }
}

