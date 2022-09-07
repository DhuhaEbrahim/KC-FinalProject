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
    private let width: CGFloat = 200
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 40) {
                HStack{
                    Text("Welcome \(name)")
                        .font(.custom("Rubik-Regular", size: 30))
                    
                    Spacer()
                    
                    NavigationLink(destination: NotificationsView(doctors: DoctorsInfoModel(fullName: "Dr. Ahmad Hasan", workPlace: "Private clinic - Bella clinic", degree: "Completed Denver residency program and earned state mandated certifications. \n Master in Dermatology. \n University of DenverCity.")))
                    {
                        Image(systemName: "bell.fill")
                        .font(.system(size: 25))
                        .frame(width: 50, height: 50)
                        .background(Color("Primary"))
                        .clipShape(Circle())
                        
                    }
                    NavigationLink(destination: ProfileView()) {
                        Image(systemName: "person.fill")
                        .font(.system(size: 25))
                        .frame(width: 50, height: 50)
                        .background(Color("Primary"))
                        .clipShape(Circle              ())
                    }
                    
                }.padding()
                
                
                // Scroll View
                ScrollView(.vertical,showsIndicators: false) {
                    
                    // Ads Auto Scrolling
                    AutoScrollView()
                    
                    Divider()
                    
                    
                    HStack {
                        
                        Text("Dermatologists")
                            .font(.custom("Rubik-Regular", size: 25))
                        
                        Spacer()
                        
                        // See All Dermatologists
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
                        
                        NavigationLink( destination: AllPharmaciesView()) {
                            Text("See All")
                                .font(.custom("Rubik-Regular", size: 17))
                            
                        }
                        Image(systemName: "chevron.right")
                        
                    }.padding()
                    
                    
                    ScrollView(.horizontal) {
                        
                        HStack {
                            
                            ForEach(pharmacies, id: \.self) {
                                pharmacy in
                                
                                VStack {
                                    
                                    Image(pharmacy)
                                        .resizable()
                                        .modifier(ImageModifier())
                                    Text(pharmacy)
                                }
                            }
                        }.padding()
                    }
                    
                }
                    
               
                    
                    
                
                
                
               
            }
            .navigationBarHidden(true)
            .foregroundColor(Color("Dark"))
            .background(Color("Secondary"))
           
        
            
           SkinGuideIconView()
        }


        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(name: "dhuha")
            .previewDevice("iPhone 12")
    }
}

