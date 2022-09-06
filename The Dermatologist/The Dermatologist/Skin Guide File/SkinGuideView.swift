//
//  SkinGuideView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//

import SwiftUI

struct SkinGuideView: View {
    
    @State var searchText = ""
    @State var isSearching = false
    
    var body: some View {
        
        // Background Color
        ZStack {
            Color("Secondary").ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                Text("Skin Guide")
                    .padding()
                    .foregroundColor(Color("Dark"))
                    .font(.custom("Rubik-Medium", size: 30))
                Text("Learning about your skin disorder helps you deal with it ... \n That's why we provided you with a trusted skin guide !")
                    .padding(.horizontal)
                        .foregroundColor(Color("Dark"))
                        .font(.custom("Rubik-Regular", size: 18))
                
                
                // Search Bar
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color("Dark"))
                    
                    TextField("Search...", text: $searchText)
                        .onTapGesture(perform: { isSearching = true })
                    
                    
                    // Show X Button And Clear Sreach Bar
                    HStack{
                        
                        if isSearching {
                            Button(action: {searchText = ""}, label: {
                                Image(systemName: "xmark.circle.fill").foregroundColor(Color("Dark"))
                            })
                        }
                        
                    }
                }.padding()
                    .background(Color("Primary"))
                    .cornerRadius(10)
                    .padding()
                
                
                // Skin Disorders List
                List{
                    
                    ForEach(diseases.filter({"\($0)".contains(searchText) || searchText.isEmpty})
                    ){ disease in
                        
                        NavigationLink(destination: SkinDiseasesView(diseaseDetails: disease)) {
                            
                            Text(disease.diseaseName).foregroundColor(Color("Dark"))
                                .font(.custom("Rubik-Medium", size: 20))
                        }
                        
                    }.listRowBackground(Color("Secondary"))
                    
                    
                    
                    
                }.listStyle(GroupedListStyle())
            }
        }
    }
}

struct SkinGuideView_Previews: PreviewProvider {
    static var previews: some View {
        SkinGuideView()
            .previewDevice("iPhone 12")
    }
}

