//
//  ContentView.swift
//  SolarGram
//
//  Created by Minh Ton on 3/24/23.
//

import SwiftUI

struct ContentView: View {
    //Allows usage of view model
    @StateObject var viewModel = FeedPostViewModel()
    
    var body: some View {
        TabView{
            Feed()
              .environmentObject(viewModel)
              .tabItem {Label("Photos", systemImage: "photo")}
              .tag("profile")
            Profile(profileCropped: ProfileCropped(image:Image("Minh")))
                .environmentObject(viewModel)
                .tabItem {Label("Profile", systemImage: "person.circle")}
                .tag("photos")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
