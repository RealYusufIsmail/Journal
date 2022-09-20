//
//  JournalApp.swift
//  Journal
//
//  Created by Yusuf Arfan Ismail on 20/09/2022.
//
//

import SwiftUI

@main // Indicates that this is the entry point for the app.
struct JournalApp: App {
    //let == val
    //http://nilhcem.com/swift-is-like-kotlin/

    var body: some Scene {
        #if os(iOS)
        WindowGroup {
            //contains two subviews, ContentView and SettingsView.
            TabView {
                ContentView()
                        .tabItem {
                            //Image(systemName: "globe")
                            //Text("World")
                            Label("Journal", systemImage: "book")
                        }
                ContentView()
                        .tabItem {
                            //Image(systemName: "person.2")
                            //Text("People")
                            Label("Settings", systemImage: "gear")
                        }
            }
        }
        #elseif os(macOS)
        WindowGroup {
            AlternativeContentView()
        }

        Settings {
            SettingsView()
        }
        #endif
    }
}
