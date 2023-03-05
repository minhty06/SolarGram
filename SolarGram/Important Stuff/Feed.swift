//
//  Feed.swift
//  SolarGram
//
//  Created by Minh Ton on 3/4/23.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        List{
            Post(personImage: "Minh", personName: "Minh", postImage: "Onion1", descrip: "Red Robin Onion Ring")
            Post(personImage: "Minh", personName: "Minh", postImage: "Onion2", descrip: "At home onions")
            Post(personImage: "Minh", personName: "Minh", postImage: "Onion3", descrip: "Baked Onions")
        }
        .listStyle(InsetListStyle())
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
