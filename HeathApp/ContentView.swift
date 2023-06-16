//
//  ContentView.swift
//  homepage for app
//
//  Created by Kristell Olivares on 6/14/23.
//

import SwiftUI

struct ContentView: View {
    @State var nameInput: String = ""
    @State var birthdayInput: String = ""
    @State private var birthDate = Date()
    @State private var signUp = "null"
    @State private var display = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 1.0, green: 0.98, blue: 0.976)
                //figure out correct color
                    .ignoresSafeArea()
                VStack{

                    Spacer()
                    Text("Welcome to ____!")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .foregroundColor(Color(red: 0.355, green: 0.462, blue: 0.503))
                        .padding()
                    
                    
                    Text("Name")
                        .foregroundColor(Color(red: 0.355, green: 0.462, blue: 0.503))
                    TextField("", text: $nameInput)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .background(Color(red: 0.355, green: 0.462, blue: 0.503))
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.355, green: 0.462, blue: 0.503))
                        .cornerRadius(12)
                                
                    Text("Date of Birth")
                        .foregroundColor(Color(red: 0.355, green: 0.462, blue: 0.503))
                    DatePicker("", selection: $birthDate, in: ...Date(), displayedComponents: .date)
                        .background(Color(red: 0.355, green: 0.462, blue: 0.503))

                        .padding()
                
                        .frame(width: 300, height: 50)
                        .background(Color(red: 0.355, green: 0.462, blue: 0.503))

                        .cornerRadius(12)
            
                    
                    Spacer()
                    NavigationLink(destination: Menu()) {
                        Text("Sign Up!")
                            .tint(.white)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color(red: 0.355, green: 0.462, blue: 0.503))
                            .cornerRadius(12)
                        //why it only says sign...
                    }
                }
                    }
                    
                }
            }
        }
        
        
    
    



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




