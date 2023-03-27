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
    @State var showCamera = false
    @State var showTrash = false
    
    var body: some View {
        NavigationView{
            
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
            
            //Lets me show the camera picker
            .sheet(isPresented: $showTrash) {
                ImagePicker(viewModel: viewModel)
            }
            .sheet(isPresented: $showCamera) {
                CameraPicker(viewModel: viewModel)
            }
            
            .toolbar{
                Button{
                    showCamera = true
                } label: {
                    Label("Add Picture", systemImage: "camera")
                }
                Button{
                    showTrash = true
                } label: {
                    Label("Remove Picture", systemImage: "photo.stack")
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
