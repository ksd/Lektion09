//
//  UserRowCell.swift
//  RandomUser
//
//  Created by ksd on 01/03/2023.
//

import SwiftUI

struct UserRowCell: View {
    let user: User
    var body: some View {
        HStack{
            AsyncImage(url: user.picture.large) { image in
                image
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(8)
                    .frame(width: 50, height: 50)
            } placeholder: {
                ProgressView()
            }
            
            Text("\(user.name.title) \(user.name.first) \(user.name.last)")
                .padding()
        }
    }
}

struct UserRowCell_Previews: PreviewProvider {
    static var previews: some View {
        UserRowCell(user: User(name: User.Name(title: "Hr", first: "Ole", last: "Olsen"), picture: User.Picture(large: URL(string: "https://randomuser.me/api/portraits/men/66.jpg")!, medium: URL(string: "https://randomuser.me/api/portraits/med/men/66.jpg")!, thumbnail: URL(string: "https://randomuser.me/api/portraits/thumb/men/66.jpg")!)))
            .previewLayout(.sizeThatFits)
    }
}