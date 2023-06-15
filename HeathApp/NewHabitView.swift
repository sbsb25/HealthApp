//
//  NewHabitView.swift
//  HeathApp
//
//  Created by Nitin Bhilkar on 6/15/23.
//

import SwiftUI

struct NewHabitView: View {
    @Binding var toDoHabits: [Habit]
    @State var title: String
    @State var isCompleted: Bool
    var body: some View {
        VStack {
            Text("      ")
            Text("Add a new Habit!")
            TextField("Enter the task description", text: $title)
                .multilineTextAlignment(.center)
            Spacer()
            Button(action: {
                self.addTask(title: self.title)
            }) {
                Text("Add")
            }
        }
    }
    private func addTask(title: String, isImportant: Bool = false) {
            
            let task = Habit(title: title, isCompleted: isCompleted)
            toDoHabits.append(task)
        }
}

struct NewHabitView_Previews: PreviewProvider {
    static var previews: some View {
        NewHabitView(toDoHabits: .constant([]), title: "", isCompleted: false)
    }
}
