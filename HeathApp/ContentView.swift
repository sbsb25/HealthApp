//
//  ContentView.swift
//  HeathApp
//
//  Created by Anok, Nicole, Shriyadita, and Kristell on 6/13/23.
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
                Color(hue: 0.08, saturation: 0.3, brightness: 0.7)
                //figure out correct color
                    .ignoresSafeArea()
                VStack{

                    Spacer()
                    Text("Welcome to ____!")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .foregroundColor(Color.white)
                        .padding()
                    
                    
                    Text("Name")
                        .foregroundColor(Color.white)
                    TextField("", text: $nameInput)
                        .foregroundColor(Color.black)
                        .frame(width: 300.0, height: 40.0)
                        .background(Color.white)
                        .padding()
                    
                    
                    Text("Date of Birth")
                        .foregroundColor(Color.white)
                    DatePicker("", selection: $birthDate, in: ...Date(), displayedComponents: .date)
                        .frame(width: 300.0, height: 50.0)
                        .background(Color.white)
                        .padding()
                    
                    Spacer()
                    NavigationLink(destination: menu()) {
                        Text("Sign Up!")
                            .tint(.white)
                            .buttonStyle(
                                .borderedProminent)
                            .padding()
                        //figure out how to make button border and also make edges of text field smooth
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



