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
  // MARK: I tried to put these two things in a V stack and make it look nice but when I click the like button it deletes the image. Do you know why that is?
                HStack{
                    Button{
                        viewModel.setLike(post)
                    } label: {
                        if post.isLiked {
                            Image(systemName:"heart.fill")
                        } else {
                            Image(systemName: "heart")
                        }
                    }
                }
    
            HStack{
                Button{
                    viewModel.setTrash(post)
                } label: {
                    Image(systemName:"trash")
                }
            }
                .listRowSeparator(.hidden)
            
        }
            .listStyle(InsetListStyle())
        }
    }


struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed().environmentObject(FeedPostViewModel())
    }
}
