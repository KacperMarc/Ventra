//
//  VentraApp.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 12/07/2025.
//

import SwiftUI

@main
struct VentraApp: App {
    
    @StateObject var authVM = AuthViewModel()
    @StateObject var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            PageManager()
                .environmentObject(authVM)
                .environmentObject(appState)
        }
    }
}
