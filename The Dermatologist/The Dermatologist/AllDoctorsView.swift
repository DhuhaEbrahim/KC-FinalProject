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
            LazyVGrid(columns: columns) {
                
                ForEach(doctorsInfo){
                    doctor in
                    VStack{
                        NavigationLink(destination: DoctorInfoView(personalInfo: doctor) ){Image(doctor.fullName).resizable().frame(width: 150, height: 200).border(Color("Dark")).cornerRadius(10)
                        }
                        Text(doctor.fullName)
                    
                    }
                }
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
//        VStack{
//
//            HStack{
//                VStack{
//                Image("Ahmad Hasan").resizable().modifier(ImageModifier())
//                    Text("Ahmad Hasan")
//                }
//                VStack{
//                Image("Khaled Abdullaziz").resizable().modifier(ImageModifier())
//                    Text("Khaled Abdullaziz")
//                }
//            }
//
//            HStack{
//
//                VStack {
//                    Image("Muhammed Othman").resizable().modifier(ImageModifier())
//                    Text("Muhammed Othman")
//                }
//                VStack {
//                    Image("Reem Omar").resizable().modifier(ImageModifier())
//                    Text("Reem Omar")
//                }
//            }
//            HStack{
//                VStack {
//                    Image("Sara Abdullah").resizable().modifier(ImageModifier())
//                    Text("Sara Abdullah")
//                }
//                VStack {
//                    Image("Zainab Ebrahim").resizable().modifier(ImageModifier())
//                    Text("Zainab Ebrahim")
//                }
//            }
//        }
//        .padding()
//        .background(Color("Secondary"))
//        .foregroundColor(Color("Dark"))
            
        }.padding() .background(Color("Primary"))
        
        
    }
}

struct AllDoctorsView_Previews: PreviewProvider {
    static var previews: some View {
        AllDoctorsView()
            .previewDevice("iPhone 13")
    }
}
