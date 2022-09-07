//
//  DoctorInfoView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//

import SwiftUI

struct DoctorInfoView: View {
    
    var personalInfo : DoctorsInfoModel
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: 20) {
                
                Spacer()
                Spacer()
                
                Image(personalInfo.fullName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 390, height: 280)
                
                VStack(alignment: .leading) {
                    DoctorView(title: "Doctor Name :", details: "\(personalInfo.fullName)")
                    DoctorView(title: "Work Place :", details:  "\(personalInfo.workPlace)")
                    DoctorView(title: "Certificates and Awards : ", details:  "\(personalInfo.degree)")
                    
                    
                    Spacer()
                    
                    HStack {
                        
                        Spacer()
                        
                        NavigationLink(destination: SkinConditionView()) {
                            
                            withAnimation(.easeInOut(duration: 1)) {
                                
                                Text("Start online consultation")
                                    .padding()
                                    .font(.custom("Rubik-Medium", size: 20))
                                    .frame(width: 300, height: 50)
                                    .background(Color("Primary"))
                                    .cornerRadius(15)
                                    .shadow(radius: 5)}
                            
                            
                        }
                        
                        
                        
                        
                        Spacer()
                    }
                    
                    
                    
                    HStack {
                        Spacer()
                        Text("Book an appointment")
                            .padding()
                            .font(.custom("Rubik-Medium", size: 20))
                            .frame(width: 300, height: 50)
                            .background(Color("Primary"))
                            .cornerRadius(15)
                            .shadow(radius: 5)
                        Spacer()
                    }.padding()
                    
                    
                    
                    
                    
                    
                }
                .frame(width: 390, height: 520)
                .background(Color("Secondary"))
                .cornerRadius(20)
                .foregroundColor(Color("Dark"))
            }
        }.ignoresSafeArea()
    }
}

struct DoctorInfoView_Previews: PreviewProvider {
    static var previews: some View {
        
        DoctorInfoView(personalInfo: DoctorsInfoModel(fullName: "Dr. Ahmad Hasan", workPlace: "Private Clinic - Bella clinic", degree: "Completed Denver residency program and earned state mandated certifications. \n Master in Dermatology \n University of DenverCity"))
    }
}


struct DoctorView: View {
    
    @State var title : String
    @State var details : String
    
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.custom("Rubik-Medium", size: 25))
            
            Text(details)
                .font(.custom("Rubik-Regular", size: 20))
            
        }.padding()
    }
}
