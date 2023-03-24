//
//  SinglePost.swift
//  SolarGram
//
//  Created by Minh Ton on 3/24/23.
//

import SwiftUI

struct SinglePost: View {
    
    //Connects to view model
    @EnvironmentObject var viewModel: FeedPostViewModel
    var post: Post
    
        var body: some View {
            VStack{
                // Name part on top of post
                HStack {
                    
                    Image(post.personImage)
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 50, height: 50)
                    Text(post.personName)
                        .font(.system(size:24))
                    //Align things left
                    Spacer()
                }
                //Cropped Image
                ImageCropped(image: Image(post.postImage))
                    .scaledToFit()
                
                HStack{
                    Text(post.descrip)
                    Spacer()
                }
                
                // Heart Interaction
//                HStack{
//                    Button{
//                        viewModel.setLike(post)
//                    } label: {
//                        if post.isLiked {
//                            Image(systemName:"heart.fill")
//                        } else {
//                            Image(systemName: "heart")
//                        }
//                        Spacer()
//                            .padding()
//                    }
//                }
            }
        }
    }


struct SinglePost_Previews: PreviewProvider {
    static var previews: some View {
        let test = Post(id: 1, personImage: "Minh", personName: "Minh", postImage: "Onion1", descrip: "Red Robin Onion Ring", isLiked: false)
        SinglePost(post: test)
    }
}
