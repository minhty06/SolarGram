//
//  ProfileGrid.swift
//  SolarGram
//
//  Created by Minh Ton on 3/4/23.
//

import SwiftUI

struct ProfileGrid: View {
    
    @EnvironmentObject var viewModel: FeedPostViewModel
    
    //    private var imageNames = ["Onion1", "Onion2", "Onion3", "Onion4"]
    
    let threeColumns =  [GridItem(.flexible()),GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        ScrollView{
            LazyVGrid(columns: threeColumns){
                //                    ImageCropped(image: Image(postImage))
                //                        .scaledToFit()
                ForEach(viewModel.feedPosts) { post in
                    AspectImage(post.postImage)
                        .scaledToFit()
                }
            }
        }
    }
    
    
    struct ProfileGrid_Previews: PreviewProvider {
        static var previews: some View {
            ProfileGrid().environmentObject(FeedPostViewModel())
        }
    }
}
