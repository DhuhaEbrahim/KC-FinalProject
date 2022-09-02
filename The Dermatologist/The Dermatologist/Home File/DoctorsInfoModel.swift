//
//  DoctorsInfoModel.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//

import Foundation
struct DoctorsInfoModel: Identifiable{
   let  id = UUID()
    var fullName: String
    var workPlace: String
    var degree: String
}
var doctorsInfo = [
 DoctorsInfoModel(fullName: "Ahmad Hasan", workPlace: "private clinic - Beauty clinic", degree: "Completed Denver residency program and earned state mandated certifications \n Master in Dermatology \n University of DenverCity"),
 DoctorsInfoModel(fullName: "Sara Abdullah", workPlace: "private clinic", degree: "Master of Science in Dermapathology Seattle University \n Bachelor of Science in Dermatology University School of Medicine"),
 DoctorsInfoModel(fullName: "Khaled Abdullaziz", workPlace: "private clinic", degree: "PhD in Dermatology Harvard University"),
 DoctorsInfoModel(fullName: "Muhammed Othman", workPlace: "private clinic - Bella clinic", degree: "canada"),
 DoctorsInfoModel(fullName: "Reem Omar", workPlace: "Jaber hospital", degree: "canada"),
 DoctorsInfoModel(fullName: "Zainab Ebrahim", workPlace: "Mubarak hosbital", degree: "canada")
 ]


