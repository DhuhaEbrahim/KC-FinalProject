//
//  AutoScrollView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 03/09/2022.
//

import SwiftUI

struct AutoScrollView: View {
    
    var numberOfImages = 5
   
    private let timer = Timer.publish(every: 3, on: .main, in: .common)
        .autoconnect()

    @State private var currentIndex = 0
   
    var body: some View {
       
        VStack{
            HStack {
                Text("Whats New")
                    .font(.custom("Rubik-Regular", size: 25))
                    .foregroundColor(Color("Dark"))
                Spacer()
                    
            }.padding()
            TabView (selection: $currentIndex) {

                ForEach(0..<numberOfImages, id: \.self) {
                    num in
                    Image("\(num)")
                        .resizable()
                        
                        .tag(num)
                }
                
                
            }.tabViewStyle(PageTabViewStyle())
            
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .padding()
                .frame(width: 400, height: 250)
            
            
                .onReceive(timer, perform: { _ in
                    withAnimation {
                        currentIndex = currentIndex < numberOfImages ? currentIndex + 1 : 0
                    }
                })
            
        }
        
    }
}

struct AutoScrollView_Previews: PreviewProvider {
    static var previews: some View {
        AutoScrollView()
    }
}
