//
//  CustomShapeView.swift
//  The Dermatologist
//
//  Created by dhuha kaweyani on 30/08/2022.
//

import SwiftUI

struct CustomShapeView: View {
    var body: some View {
        
        VStack {
            Rectangle()
                .trim(from: 0, to: 0.5)
            
                .frame(width: 300, height: 50)
                
        }
    }
}

struct CustomShapeView_Previews: PreviewProvider {
    static var previews: some View {
        CustomShapeView()
    }
}
