//
//  User.swift
//  RandomUser
//
//  Created by ksd on 01/03/2023.
//

import Foundation


struct User: Codable, Identifiable {
    let id = UUID().uuidString
    let name: Name
    let picture: Picture
    
    struct Name: Codable {
        let title, first, last: String
    }
    
    struct Picture: Codable {
        let large, medium, thumbnail: URL
    }
}
