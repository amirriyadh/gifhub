//
//  gifhubApp.swift
//  gifhub
//
//  Created by Amir Riyadh on 15/10/2021.
//

import SwiftUI

@main
struct gifhubApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
