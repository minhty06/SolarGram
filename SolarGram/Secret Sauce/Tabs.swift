//
//  Tabs.swift
//  SolarGram
//
//  Created by Minh Ton on 3/12/23.
//

import SwiftUI

struct Tabs: View {
    @State private var selectedTab = "photos"
    var body: some View {
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


struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        Tabs()
    }
}
