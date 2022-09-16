//
//  Ecomm_STRApp.swift
//  Ecomm-STR
//
//  Created by ShreeThaanu on 16/09/22.
//

import SwiftUI

@main
struct Ecomm_STRApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
