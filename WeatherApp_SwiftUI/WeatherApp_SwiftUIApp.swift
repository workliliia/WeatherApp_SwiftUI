//
//  WeatherApp_SwiftUIApp.swift
//  WeatherApp_SwiftUI
//
//  Created by Liliia Rudenko on 24/04/2024.
//

import SwiftUI
import SwiftData

@main
struct WeatherApp_SwiftUIApp: App {
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
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
