//
//  UserDetailView.swift
//  RandomUser
//
//  Created by ksd on 03/03/2023.
//

import SwiftUI
import MapKit

struct UserDetailView: View {
    
    let user: User
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 56.1190901, longitude: 10.14765),
        latitudinalMeters: 20000,
        longitudinalMeters: 20000)
    
    var body: some View {
        Map(
            coordinateRegion: $region,
            annotationItems: [user]) { user in
                MapAnnotation(coordinate: user.coordinate, anchorPoint: CGPoint(x: 0.5, y: 0.5)) {
                    AsyncImage(url: user.picture.large) { image in
                        AvatarView(image: image)
                    } placeholder: {
                        ProgressView()
                    }
            }
        }
        .ignoresSafeArea()
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(user: User(name: User.Name(title: "Hr", first: "Ole", last: "Olsen"), picture: User.Picture(large: URL(string: "https://randomuser.me/api/portraits/men/66.jpg")!, medium: URL(string: "https://randomuser.me/api/portraits/med/men/66.jpg")!, thumbnail: URL(string: "https://randomuser.me/api/portraits/thumb/men/66.jpg")!), location: User.Location(coordinates: User.Location.Coordinates(latitude: "-50.3695", longitude: "-92.2983"))) )
    }
}
