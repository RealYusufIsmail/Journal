//
// Created by Yusuf Arfan Ismail on 20/09/2022.
//

import SwiftUI

struct MyScene: Scene {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                        .tabItem {
                            Label("Journal", systemImage: "book")
                        }

                ContentView()
                        .tabItem {
                            Label("Settings", systemImage: "gear")
                        }
            }
        }
    }
}

