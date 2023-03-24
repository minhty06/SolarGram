//
//  Feed.swift
//  SolarGram
//
//  Created by Minh Ton on 3/4/23.
//

import SwiftUI

struct Feed: View {
    
    //Connects to view model
    @EnvironmentObject var viewModel: FeedPostViewModel
    
    
    var body: some View {
        
        imageList
    }
    var imageList: some View{
        List(viewModel.feedPosts) { post in
            SinglePost(post: post)
            HStack{
                    Button{
                        viewModel.setLike(post)
                    } label: {
                        if post.isLiked {
                            Image(systemName:"heart.fill")
                        } else {
                            Image(systemName: "heart")
                        }
                        Spacer()
                            .padding()
                    }
                }
            .listRowSeparator(.hidden)
        }
           
            .listStyle(InsetListStyle())
        }
    }


struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
