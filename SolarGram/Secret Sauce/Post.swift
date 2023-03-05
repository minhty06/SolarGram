//
//  Post.swift
//  SolarGram
//
//  Created by Minh Ton on 3/4/23.
//

import SwiftUI

struct Post: View {
    var personImage: String
    var personName: String
    var postImage: String
    var descrip: String
    
    var body: some View {
        VStack{
            HStack {
                Image(personImage)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 50, height: 50)
                Text(personName)
                    .font(.system(size:24))
                //Align things left
                Spacer()
            }
            ImageCropped(image: Image(postImage))
                .scaledToFit()
            
            HStack{
                Text(descrip)
                Spacer()
            }
            
            
            HStack{
                Image(systemName: "heart")
                Spacer()
                    .padding()
            }
        }
    }
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post(personImage: "Minh", personName: "Minh", postImage: "Onion1", descrip: "Red Robin Onion Ring")
    }
}
