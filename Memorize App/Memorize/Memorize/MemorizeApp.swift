//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Tansa Nisan Gunerhan on 10.09.2023.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
