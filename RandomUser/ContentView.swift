//
//  ContentView.swift
//  RandomUser
//
//  Created by ksd on 01/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var stateController: StateController
    
    private var users: [User] {
        stateController.users.sorted {
            $0.name.last < $1.name.last
        }
    }
    
    var body: some View {
        NavigationView {
            List(users) { user in
                NavigationLink {
                    UserDetailView(user:user)
                } label: {
                    UserRowCell(user: user)
                }
                .listRowSeparator(.hidden)
            }
            .navigationTitle(Text("Users"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView().environmentObject(StateController())
    }
}
