//
//  NewHabitView.swift
//  HeathApp
//
//  Created by Nitin Bhilkar on 6/15/23.
//

import SwiftUI

struct NewHabitView: View {
    @Environment(\.managedObjectContext) var context
    @Binding var showNewHabit : Bool
    @State var title: String
    @State var isCompleted: Bool
    var body: some View {
        ZStack {
            Color(red: 1.0, green: 0.98, blue: 0.976)
            //figure out correct color
                .ignoresSafeArea()
            VStack {
                Text("      ")
                Text("Add a new Habit!")
                TextField("Enter the task description", text: $title)
                    .multilineTextAlignment(.center)
                Spacer()
                Button(action: {
                    self.addTask(title: self.title)
                    self.showNewHabit = false
                }) {
                    Text("Add")
                }
            }
        }
    }
    private func addTask(title: String, isImportant: Bool = false) {
            
        let task = HabitX(context: context)
        task.id = UUID()
        task.title = title
        task.isCompleted = isCompleted
                
        do {
                    try context.save()
        } catch {
                    print(error)
        }
        }
}

struct NewHabitView_Previews: PreviewProvider {
    static var previews: some View {
        NewHabitView(showNewHabit: .constant(true), title: "", isCompleted: false)
    }
}
