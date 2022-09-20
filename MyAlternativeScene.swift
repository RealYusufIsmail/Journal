//
// Created by Yusuf Arfan Ismail on 20/09/2022.
//


import SwiftUI

struct MyAlternativeScene: Scene {
    var body: some Scene {
        WindowGroup {
            AlternativeContentView()
        }

        #if os(macOS)
        Settings {
            SettingsView()
        }
        #endif
    }
}