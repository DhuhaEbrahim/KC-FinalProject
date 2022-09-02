//
//  SkinGuideView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//

import SwiftUI

struct SkinGuideView: View {
    
    let diseases = ["Eczema ", "Skin cancer", "Hives (Urticaria)", "Shingles (Herpes Zoster)", "Acne "]
    
    @State var searchText = ""
   
    var body: some View {
        
        VStack(alignment: .leading) {
                     
            searchBarView(searchText: $searchText)
        List (diseases, id: \.self) { disease in
            Text(disease)}
        .listStyle(GroupedListStyle())
        .searchable(text: $searchText)
            

        }
        
    }
}

struct SkinGuideView_Previews: PreviewProvider {
    static var previews: some View {
        SkinGuideView()
            .previewDevice("iPhone 12")
    }
}

struct searchBarView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("lightPink"))
            HStack {
                Image(systemName:
                        "magnifyingglass")
                TextField("Search...", text: $searchText)
            }.foregroundColor(.gray)
                .padding(.leading, 13)
        }
        . frame (height: 40)
        .cornerRadius(13)
        .padding()
    }
}
