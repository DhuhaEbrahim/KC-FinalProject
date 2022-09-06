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
        
        ZStack {
            Color("Secondary").ignoresSafeArea()
    
            VStack(alignment: .leading) {
                Text("Skin Guide")
                    .padding()
                    .foregroundColor(Color("Dark"))
                    .font(.custom("Rubik-Medium", size: 30))
                HStack{
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color("Dark"))
                    
               TextField("Search...", text: $searchText)
                    .onTapGesture(perform: { isSearching = true })
                
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
