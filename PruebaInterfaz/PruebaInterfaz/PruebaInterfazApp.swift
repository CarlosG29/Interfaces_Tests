//
//  PruebaInterfazApp.swift
//  PruebaInterfaz
//
//  Created by Carlos Eduardo Gurdian on 10/11/24.
//

import SwiftUI
import SwiftData

@main
struct PruebaInterfazApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            LoginView()
        }
        .modelContainer(sharedModelContainer)
    }
}
