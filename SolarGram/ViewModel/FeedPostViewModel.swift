//
//  FeedPostViewModel.swift
//  SolarGram
//
//  Created by Minh Ton on 3/24/23.
//

import SwiftUI



class FeedPostViewModel: ObservableObject {
    
    //Connection to Model
    
    @Published private var model: FeedPosts = FeedPosts()
    
    // Public var that connects to the view
    
    var feedPosts: [Post]{
        model.posts
    }
    
    // Is Liked?
    func setLike(_ post: Post) {
        model.toggleLiked(post)
    }
}

