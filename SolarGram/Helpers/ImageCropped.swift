//
//  ImageCropped.swift
//  SolarGram
//
//  Created by Minh Ton on 3/4/23.
//

import SwiftUI

//MARK: Still need to make images 1:1
struct ImageCropped: View {
    var image:Image
    var body: some View {
        VStack{
            image
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .aspectRatio(1, contentMode: .fill)
                .clipped()
        }
        }
}

struct ImageCropped_Previews: PreviewProvider {
    static var previews: some View {
        ImageCropped(image:
        Image("Onion1"))
    }
}
