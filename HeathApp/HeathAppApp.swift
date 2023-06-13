//
//  HeathAppApp.swift
//  HeathApp
//
//  Created by Nitin Bhilkar on 6/13/23.
//

import SwiftUI

@main
struct HeathAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
