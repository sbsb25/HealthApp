//
//  HabitTrackerAdd.swift
//  HeathApp
//
//  Created by Nitin Bhilkar on 6/15/23.
//

import SwiftUI
import Foundation


struct HabitTrackerAdd: View {
@State var toDoHabits: [Habit] = []
@State private var showNewHabit = false
    var body: some View {
        VStack {
            
            HStack {
                Text("Healthy Habits!")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .padding(.leading)
                Button(action: {
                    self.showNewHabit = true
                }) {
                    Text("+")
                    
                }
            
               
                List {
                        ForEach (toDoHabits)
                    {Habit in
                                Text(Habit.title)
                            }
                }
            }
            
            

        }
        if showNewHabit {
            NewHabitView(showNewHabit: $showNewHabit, toDoHabits: $toDoHabits, title: "", isCompleted: false)
                }
    }
}

struct HabitTrackerAdd_Previews: PreviewProvider {
    static var previews: some View {
        HabitTrackerAdd()
    }
}
