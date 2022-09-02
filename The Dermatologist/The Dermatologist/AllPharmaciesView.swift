//
//  AllPharmaciesView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//

import SwiftUI

struct AllPharmaciesView: View {
    
    var pharmacies = ["Pharmazone", "Aldawaeyaa", "Alhajery", "Almutawaa", "Boots", "Royal"]
    
    var body: some View {
        
        ZStack {
            Color("Secondary").ignoresSafeArea()
            Text("coming soon").font(.custom("Rubik-Bold", size: 30)).foregroundColor(Color("Dark"))
        }
    }
}

struct AllPharmaciesView_Previews: PreviewProvider {
    static var previews: some View {
        AllPharmaciesView()
    }
}
