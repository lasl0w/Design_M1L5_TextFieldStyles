//
//  CustomTextFieldStyle.swift
//  Design_M1L5_TextFieldStyles
//
//  Created by tom montgomery on 9/14/23.
//

import Foundation
import SwiftUI

// It must conform to the TextFieldStyle protocol
struct CustomTextFieldStyle: TextFieldStyle {
    // 1) start by adding protocol stubs
    
    // 'configuration' param is a reference to the textfield
//    func _body(configuration: TextField<Self._Label>) -> some View {
//
//    }
        func _body(configuration: TextField<Self._Label>) -> some View {
    // 2) take your style and drop it in this _body function
            ZStack {
                RoundedRectangle(cornerRadius: 5.0)
                    .stroke(Color.gray)
                    .frame(height: 40)
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color.gray)
                    // SFSymbols are nice, just change the color
                    //TextField("What's the question?", text: $text4)
                    // REPLACE the above textfield element, with 'configuration'
                    configuration
                }
                .padding(.horizontal)
                // move the icon off the edge a bit
            }
            .shadow(radius: 5)
            
            // NO NEED to write 'return' keyword b/c it's all nested under one parent element
        }
   

    
}
