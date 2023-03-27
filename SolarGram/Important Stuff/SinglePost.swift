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
                    
                    AspectImage(Image(post.personImage))
                        .clipShape(Circle())
                        .frame(width: 50, height: 50)
                    Text(post.personName)
                        .font(.system(size:24))
                    //Align things left
                    Spacer()
                }
                //Cropped Image
                AspectImage(post.postImage)
                    .scaledToFit()
                
                HStack{
                    Text(post.descrip)
                    Spacer()
                }
                

            }
        }
    }


struct SinglePost_Previews: PreviewProvider {
    static var previews: some View {
        let test = Post( personImage: "Minh", personName: "Minh", postImage: Image("Onion1"), descrip: "Red Robin Onion Ring", isLiked: false)
        SinglePost(post: test)
    }
}
