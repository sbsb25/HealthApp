//
//  Habit.swift
//  HeathApp
//
//  Created by Nitin Bhilkar on 6/15/23.
//

import Foundation
class Habit : Identifiable{
    var id = UUID()
    var title = ""
    var isCompleted = false
    
    init(title: String, isCompleted: Bool = false) {
            self.title = title
            self.isCompleted = isCompleted
        }
}
