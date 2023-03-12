//
//  Profile.swift
//  SolarGram
//
//  Created by Minh Ton on 3/4/23.
//

import SwiftUI

struct Profile: View {
    let profileCropped: ProfileCropped
    var body: some View {
        VStack{
            profileCropped
            ProfileGrid()
            
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile(profileCropped: ProfileCropped(image:Image("Minh")))
    }
}
