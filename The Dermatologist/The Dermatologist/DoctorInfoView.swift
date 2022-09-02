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
        VStack{
            Spacer()
            Image(personalInfo.fullName).resizable().frame(width: 300, height: 300)
            
            VStack(alignment: .leading){
                DoctorView(ss: "Doctor Name :", dd: "\(personalInfo.fullName)")
          DoctorView(ss: "Work Place :", dd:  "\(personalInfo.workPlace)")
                DoctorView(ss: "Certificates and Awards :", dd:  "\(personalInfo.degree)")
                    
                
                
                
                HStack {
                    Spacer()
                    NavigationLink(destination: SkinConditionView())
                { Text("start")
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color("Primary"))
                    .cornerRadius(15)
                    .shadow(radius: 5)
            }
                    Spacer()
                }
            
               
        }
        .frame(width: 390, height: 520)
                .background(Color("Secondary"))
                .cornerRadius(15)
                .foregroundColor(Color("Dark"))
        }
    }
}

struct DoctorInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorInfoView(personalInfo: DoctorsInfoModel(fullName: "Ahmad Hasan", workPlace: "Private Clinic", degree: "Completed Denver residency program and earned state mandated certifications \n Master in Dermatology \n University of DenverCity"))
    }
}


struct DoctorView: View {
    @State var ss : String
    @State var dd : String
    var body: some View {
        HStack{
            Text(ss).font(.custom("Rubik-Medium", size: 20))
            Text(dd).font(.custom("Rubik-Regular", size: 20))
            
        }.padding()
    }
}
