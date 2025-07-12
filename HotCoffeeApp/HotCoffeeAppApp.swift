//
//  HotCoffeeAppApp.swift
//  HotCoffeeApp
//
//  Created by Wiktor Bramer on 01/07/2025.
//

import SwiftUI

@main
struct HotCoffeeAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
