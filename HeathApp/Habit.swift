//
//  Habit.swift
//  HeathApp
//
//  Created by Nitin Bhilkar on 6/15/23.
//

import Foundation

class Habit: Identifiable{
    var id = UUID()
    var title = ""
    var isComplete = false
    
    init(title: String, isComplete: Bool = false) {
            self.title = title
            self.isComplete = isComplete
        }
}
