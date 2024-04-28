//
//  BinusCalculatorApp.swift
//  BinusCalculator
//
//  Created by Ari Supriatna on 28/04/24.
//

import SwiftUI
import SwiftData

@main
struct BinusCalculatorApp: App {
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
            NavigationStack {
                ContentView()
            }
        }
        .modelContainer(sharedModelContainer)
    }
}
