//
//  NotificationsView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//

import SwiftUI

struct NotificationsView: View {
    
    @State var notification = false
    var doctors : DoctorsInfoModel
    
    var body: some View {
        
        
        ZStack{
            Color("Secondary").ignoresSafeArea()
            
            VStack{
                
        HStack{
            Image(doctors.fullName).resizable().frame(width: 100, height: 90).clipShape(Circle())
    
            Text(doctors.fullName).foregroundColor(Color("Dark")).fontWeight(.heavy)
            Spacer()
            Text("1")
                
                
                .font(.system(size: 10))
                .foregroundColor(.white)
                .frame(width: 15, height: 15)
                .background(.blue)
               .clipShape(Circle())
            
        }.padding().frame(width: 370, height: 100).border(Color("Primary"), width: 3)
                Spacer()
            }.padding()
            }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView(doctors: DoctorsInfoModel(fullName: "Dr. Ahmad Hasan", workPlace: "Private Clinic", degree: "canada"))
    }
}
