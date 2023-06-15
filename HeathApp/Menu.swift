//
//  menu.swift
//  homepage for app
//
//  Created by Kristell Olivares on 6/15/23.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 1.0, green: 0.98, blue: 0.976)
                //figure out correct color
                    .ignoresSafeArea()
                VStack {
                    Text("What would you like to do today?")
                        .font(.system(size: 30))
                        .fontWeight(.black)
                        .foregroundColor(Color(red: 0.347, green: 0.454, blue: 0.495))
                        .padding()
                        .padding()
                    VStack {
                        NavigationLink(destination: Journal()) {
                            Text("Prescription")
                                .tint(.white)
                                .padding()
                                .frame(width: 300, height: 50)
                                .background(Color(red: 0.355, green: 0.462, blue: 0.503))
                                .cornerRadius(12)
                        }
                        
                        Text("Select your mood and journal about how you are feeling")
                            .foregroundColor(Color(red: 0.539, green: 0.505, blue: 0.492))
                            .multilineTextAlignment(.center)
                            .padding()
                        VStack{
                            NavigationLink(destination: Journal()) {
                                Text("Journal")
                                    .tint(.white)
                                    .padding()
                                    .frame(width: 300, height: 50)
                                    .background(Color(red: 0.355, green: 0.462, blue: 0.503))
                                    .cornerRadius(12)
                            }
                            
                            Text("Record your prescription, when you take it, and if you have")
                                .foregroundColor(Color(red: 0.539, green: 0.505, blue: 0.492))
                                .multilineTextAlignment(.center)
                                .padding()
                            
                            VStack {
                                NavigationLink(destination: HabitTrackerAdd()) {
                                    Text("Habit Tracker")
                                        .tint(.white)
                                        .padding()
                                        .frame(width: 300, height: 50)
                                        .background(Color(red: 0.355, green: 0.462, blue: 0.503))
                                        .cornerRadius(12)
                                    
                                }
                                Text("Start a healthy habit! Record how often you'd like to do it and if you have.")
                                    .foregroundColor(Color(red: 0.539, green: 0.505, blue: 0.492))
                                    .multilineTextAlignment(.center)
                                    .padding()
                            }
                        }
                    }
                }
            }
            
        }
    }
    struct Menu_Previews: PreviewProvider {
        static var previews: some View {
            Menu()
        }
    }
}
    

