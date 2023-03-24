//
//  ProfileCropped.swift
//  SolarGram
//
//  Created by Minh Ton on 3/4/23.
//

import SwiftUI



struct ProfileCropped: View {
    let image: Image
    var body: some View {
        VStack{
            image
                .resizable()
                .clipShape(Circle())
                .frame(width: 150, height: 150)
            Text("Minh")
                .font(.system(size:36))
        }
        
    }
}

struct ProfileCropped_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCropped(image: Image("Minh"))
    }
}
