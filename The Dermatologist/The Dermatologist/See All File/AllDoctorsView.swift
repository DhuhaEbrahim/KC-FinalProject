//
//  AllDoctorsView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//

import SwiftUI

struct AllDoctorsView: View {
    
 var columns = [GridItem(spacing: 10),
                 GridItem(spacing: 10)]
    
    var body: some View {
        
        ScrollView{
            
            LazyVGrid(columns: columns, spacing: 30) {
                
                ForEach(doctorsInfo) {
                    doctor in
                    
                    VStack(spacing: 0.5) {
                        
                        NavigationLink(destination: DoctorInfoView(personalInfo: doctor)) {
                            
                            Image(doctor.fullName)
                                .resizable()
                                .modifier(ImagesModifier())
                            
                        }
                        
                        
                        Text(doctor.fullName)
                            .font(.custom("Rubik-Medium", size: 17))
                            .foregroundColor(Color("Dark"))
                        
                        
                    }
                }
                
            }
            .padding()
            
        }
        .background(Color("Secondary"))
        
        
    }
}

struct AllDoctorsView_Previews: PreviewProvider {
    static var previews: some View {
        AllDoctorsView()
            .previewDevice("iPhone 13")
    }
}
