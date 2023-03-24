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
    var posts: [Post] = [Post(id: 1, personImage: "Minh", personName: "Minh", postImage: "Onion1", descrip: "Red Robin Onion Ring", isLiked: false),
                         Post(id: 2, personImage: "Minh", personName: "Minh", postImage: "Onion2", descrip: "At home onions",isLiked: false),
                         Post(id: 3, personImage: "Minh", personName: "Minh", postImage: "Onion3", descrip: "Baked Onions",isLiked: false),
                         Post(id: 4, personImage: "Minh", personName: "Minh", postImage: "Onion4", descrip: "Some Onions",isLiked: false)
    ]
    

    mutating func toggleLiked(_ post: Post) {
        let postIndex = posts.firstIndex { p in
            p.id == post.id
        }
        guard let actualIndex = postIndex else {return}
        
        posts[actualIndex].isLiked.toggle()
    }
    
}

struct Post: Identifiable {
    var id: Int
    var personImage: String
    var personName: String
    var postImage: String
    var descrip: String
    var isLiked: Bool
}
