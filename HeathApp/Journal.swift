//
//  Journal.swift
//  HeathApp
//
//  
//

import SwiftUI

struct Journal: View {
    var body: some View {
        ZStack {
            Color(red: 1.0, green: 0.98, blue: 0.976)
                .ignoresSafeArea()
        VStack{
                // add navigation link
            
                Spacer(minLength: 0.1)
                Text("How are you feeling today?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding([.top, .leading], 40.0)
                    .foregroundColor(Color(red: 0.355, green: 0.462, blue: 0.503))
                        .padding(.bottom, 15.0)
                        .offset(x:0.0, y:-300.0)
                
                Spacer(minLength:0.6)
              
                HStack {
                    Text("Today I am feeling")
                        .font(.title2)
                        .fontWeight(.regular)
                        .padding(.leading, 60.0)
                        .foregroundColor(Color(red: 0.355, green: 0.462, blue: 0.503))
                        
                    Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("Feeling")) {
                        Text("Happy ◝(ᵔᵕᵔ)◜")
                        Text("Sad (• ᴖ •｡)").tag(2)
                        Text("Calm (*ᵕᴗᵕ)⁾⁾").tag(3)
                        Text("Angry (๑•̀ᗝ•́)૭").tag(4)
                        Text("Excited ヾ( ˃ᴗ˂ )◞*").tag(5)
                        Text("Tired  ᶻ 𝗓 𐰁").tag(6)
                    } //picker
                    
                } //hstack
                .padding(.bottom, 0.50)
                .offset(x:0.0, y:-570.0)
                    TextField("Begin Journaling Here", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal, 80.0)
                        .offset(x:15.0, y:-550.0)
                                          
                }
                    
                Spacer()
                
            } //vstack
            .padding(.leading, -51.0)
        
         // zstack
    } //var body
} //struct

struct Journal_Previews: PreviewProvider {
    static var previews: some View {
        Journal()
    }
}
