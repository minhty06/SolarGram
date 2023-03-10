//
//  SolarGramApp.swift
//  SolarGram
//
//  Created by Minh Ton on 2/27/23.
//

import SwiftUI

@main
struct SolarGramApp: App {
    @State private var selectedTab = "photos"
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab) {
                Profile(profileCropped: ProfileCropped(image:Image("Minh")))
                    .tabItem {Label("Photos", systemImage: "photo")}
                    .tag("photos")
                Feed()
                //Use SF symbols to get icons
                    .tabItem {Label("Profile", systemImage: "person.circle")}
                    .tag("profile")
            }
        }
    }
}
