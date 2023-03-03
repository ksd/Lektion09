//
//  StateController.swift
//  RandomUser
//
//  Created by ksd on 01/03/2023.
//

import SwiftUI

@MainActor class StateController: ObservableObject {
    @Published var users: [User] = []
    
    init(){
        guard let randomUserUrl = URL(string: "https://randomuser.me/api/?nat=DK&results=50") else {return}
        fetchUsers(from: randomUserUrl)
    }

   private func fetchUsers(from url: URL) {
      Task {
            guard let rawUserData = await NetworkService.getData(from: url) else {return}
            let decoder = JSONDecoder()
            do {
                let result = try decoder.decode(RandomUserResult.self, from: rawUserData)
                users = result.results
            } catch {
                fatalError("Konverteringen fra JSON gik ad helvede til")
            }
        }
        
    }
}
