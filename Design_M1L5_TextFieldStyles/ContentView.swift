//
//  ContentView.swift
//  Design_M1L5_TextFieldStyles
//
//  Created by tom montgomery on 9/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var text = ""
    @State var text2 = ""
    @State var text3 = ""
    @State var text4 = ""
    @State var text5 = ""
    
    var body: some View {
        VStack {
            // default TextField is in the middle, unbordered, unstyled.  Fear not!  a few easy modifiers...
            TextField("Enter your text", text: $text)
                .textFieldStyle(DefaultTextFieldStyle())
            // DefaultTextFieldStyle uses the platform+version default styles for that device/os
            
            TextField("Enter more text", text: $text2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            // Put the border after the frame so it applies the right border height
            TextField("What's your email?", text: $text3)
                .frame(height: 40)
                .border(Color.black, width: 2)
            
            // with Magnifying Glass and improved styling
            ZStack {
                RoundedRectangle(cornerRadius: 5.0)
                    .stroke(Color.gray)
                    .frame(height: 40)
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color.gray)
                    // SFSymbols are nice, just change the color
                    TextField("What's the question?", text: $text4)
                }
                .padding(.horizontal)
                // move the icon off the edge a bit
            }
            .shadow(radius: 5)
            
            // LASTLY - call our CustomTextFieldStyle!
            TextField("Enter your name", text: $text5)
                .textFieldStyle(CustomTextFieldStyle())
            // yay! - code reuse, readability & simplicity
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
