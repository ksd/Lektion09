//
//  User.swift
//  RandomUser
//
//  Created by ksd on 01/03/2023.
//

import Foundation
import CoreLocation

struct User: Codable, Identifiable {
    let id = UUID()
    let name: Name
    let picture: Picture
    let location: Location
    
    struct Name: Codable {
        let title, first, last: String
    }
    
    struct Picture: Codable {
        let large, medium, thumbnail: URL
    }
    
    struct Location: Codable {
        let coordinates: Coordinates
        
        struct Coordinates: Codable {
            let latitude, longitude: String
        }
    }
    
    /// computed property for at overholde MapKit Location bla bla
    
}

extension User {
    var coordinate: CLLocationCoordinate2D {
        if let latitude = Double(location.coordinates.latitude),
           let longitude = Double(location.coordinates.longitude) {
            return CLLocationCoordinate2D(
                latitude: latitude,
                longitude: longitude)
        }
        return CLLocationCoordinate2D()
    }
}

