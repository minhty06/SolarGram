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
    
// Connect model logic to trash
    func setTrash(_ post: Post) {
        model.trash(post)
    }
    
//Image
    func addPostFrom(image: UIImage?) {

        // make sure the optional is an actual image
        guard let image else {return}
        
        // you must do this on main thread for UI to update properly
        DispatchQueue.main.async {
            // create a new post object, it might look like this, but you can adapt as needed in your project.
//            let newPost = Post(image: Image(uiImage: image), description: "Something New", isFavorite: false, author: User.currentUser)
            let newPost = Post(personImage: "Minh", personName: "Minh", postImage: Image(uiImage: image), descrip: "Something new", isLiked: false)
            
            // call some function on the model to add the new post to the array of posts, you can do this how you like, but the logic should be in the model
            self.model.posts.append(newPost)
        }
    }
}

