//
//  AllPharmaciesView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//

import SwiftUI

struct AllPharmaciesView: View {
    
    var pharmacies = ["Pharmazone", "Aldawaeyaa", "Alhajery", "Almutawaa", "Boots", "Royal"]
    
    var columns = [GridItem(spacing: 10),
                   GridItem(spacing: 10)]
       
    var body: some View {
        
        ScrollView{
            
            LazyVGrid(columns: columns,spacing: 30) {
                
                ForEach(pharmacies, id: \.self) {
                    pharmacy in
                    
                    VStack(spacing: 0.5) {
                        
                        Image(pharmacy)
                            .resizable()
                            .modifier(ImagesModifier())
                        
                        Text(pharmacy)
                            .font(.custom("Rubik-Regular", size: 17))
                            .foregroundColor(Color("Dark"))
                        
                    }
                }
            }
        }
        .padding()
        .background(Color("Secondary"))
        
    }
}

struct AllPharmaciesView_Previews: PreviewProvider {
    static var previews: some View {
        AllPharmaciesView()
    }
}
