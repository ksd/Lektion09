//
//  AvatarView.swift
//  RandomUser
//
//  Created by ksd on 03/03/2023.
//

import SwiftUI

struct AvatarView: View {
    
    let image: Image
    var body: some View {
        
        image
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 2)
            }
            .shadow(radius: 7)
            .frame(width: 80, height: 80)
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(image: Image(systemName: "person.fill"))
    }
}
