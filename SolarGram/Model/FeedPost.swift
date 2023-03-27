//
//  FeedPost.swift
//  SolarGram
//
//  Created by Minh Ton on 3/24/23.
//

import Foundation
import SwiftUI


//List{
//    Post(personImage: "Minh", personName: "Minh", postImage: "Onion1", descrip: "Red Robin Onion Ring")
//    Post(personImage: "Minh", personName: "Minh", postImage: "Onion2", descrip: "At home onions")
//    Post(personImage: "Minh", personName: "Minh", postImage: "Onion3", descrip: "Baked Onions")
//}



struct FeedPosts {
    var posts: [Post] = [Post( personImage: "Minh", personName: "Minh", postImage: Image("Onion1"), descrip: "Red Robin Onion Ring", isLiked: false),
                         Post(personImage: "Minh", personName: "Minh", postImage: Image("Onion2"), descrip: "At home onions",isLiked: false),
                         Post( personImage: "Minh", personName: "Minh", postImage: Image("Onion3"), descrip: "Baked Onions",isLiked: false),
                         Post( personImage: "Minh", personName: "Minh", postImage: Image("Onion4"), descrip: "Some Onions",isLiked: false)
    ]
    

    mutating func toggleLiked(_ post: Post) {
        //Find index that matches the post
        let postIndex = posts.firstIndex { p in
            p.id == post.id
        }
        guard let actualIndex = postIndex else {return}
        
        posts[actualIndex].isLiked.toggle()
    }
    
    // MARK: Trash logic here
    mutating func trash(_ post: Post){
        let postIndex = posts.firstIndex { p in
            p.id == post.id
        }
        guard let actualIndex = postIndex else {return}
        posts.remove(at: actualIndex)
    }
}

struct Post: Identifiable {
    var id: UUID = UUID()
    var personImage: String
    var personName: String
    var postImage: Image
    var descrip: String
    var isLiked: Bool
}
