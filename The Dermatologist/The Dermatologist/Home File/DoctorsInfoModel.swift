//
//  DoctorsInfoModel.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//

import Foundation

struct DoctorsInfoModel: Identifiable {
   let  id = UUID()
    var fullName: String
    var workPlace: String
    var degree: String
}

var doctorsInfo = [
    
 DoctorsInfoModel(fullName: "Dr. Ahmad Hasan", workPlace: "private clinic - Bella clinic", degree: "Completed Denver residency program and earned state mandated certifications. \n Master in Dermatology. \n University of DenverCity."),
 
 DoctorsInfoModel(fullName: "Dr. Sara Abdullah", workPlace: "Jaber Al-Ahmad Hospital", degree: "Master of Science in Dermapathology Seattle University. \n Bachelor of Science in Dermatology University School of Medicine"),
 
 DoctorsInfoModel(fullName: "Dr. Hussain Yasin", workPlace: "Al-Salam Hospital", degree: "Completed Denver residency program and earned state mandated certifications. \n Master in Dermatology. \n University of DenverCity."),
 
 DoctorsInfoModel(fullName: "Dr. Amnah Hussain", workPlace: "private clinic - Beauty clinic", degree: "Master of Science in Dermapathology Stanford University, Bachelor of Science in Dermatology Stanford University"),
 
 DoctorsInfoModel(fullName: "Dr. Reem Omar", workPlace: "Jaber hospital", degree: "Completed Denver residency program and earned state mandated certifications. \n Master in Dermatology. \n University of DenverCity."),
 
 DoctorsInfoModel(fullName: "Dr. Parker Trump", workPlace: "Private Clinic - Pure Clinic", degree: "PhD in Dermatology Harvard University"),
 
 DoctorsInfoModel(fullName: "Dr. Talal Almuhaisen", workPlace: "Al-Hadi Hospital", degree: "Master of Science in Dermapathology Denver University"),
 
 DoctorsInfoModel(fullName: "Dr. Belen Encabo", workPlace: "Private Clinic - Derma Clinic", degree: "Master of Science in Dermapathology Denver University")
 
 
 
 
 
 ]


