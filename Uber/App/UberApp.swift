//
//  UberApp.swift
//  Uber
//
//  Created by Marcelo de Araújo on 31/10/2023.
//

import SwiftUI

@main
struct UberApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
