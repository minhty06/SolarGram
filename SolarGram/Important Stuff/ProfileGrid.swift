//
//  ProfileGrid.swift
//  SolarGram
//
//  Created by Minh Ton on 3/4/23.
//

import SwiftUI

struct ProfileGrid: View {
    private var imageNames = ["Onion1", "Onion2", "Onion3", "Onion4"]
    let threeColumns =  [GridItem(.flexible()),GridItem(.flexible()), GridItem(.flexible())]
        var body: some View {
        ScrollView{
            LazyVGrid(columns: threeColumns){
                ForEach(imageNames, id:\.self){ item in
                    
                    ImageCropped(image: Image(item))
                    
//                    Image(item)
//                        .resizable()
//                        .scaledToFill()
//Idk why adding a frame stopped the images from being weird...
//                        .frame(minWidth: 0, maxWidth: .infinity)
//                        .aspectRatio(1, contentMode: .fill)
//                        .clipped()
                }
            }
        }
    }
}

struct ProfileGrid_Previews: PreviewProvider {
    static var previews: some View {
        ProfileGrid()
    }
}
