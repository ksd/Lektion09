//
//  RandomUserApp.swift
//  RandomUser
//
//  Created by ksd on 01/03/2023.
//

import SwiftUI

@main
struct RandomUserApp: App {
    
    @StateObject var stateController = StateController()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(stateController)
        }
    }
}
