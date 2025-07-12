//
//  ContentView.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 12/07/2025.
//

import SwiftUI

struct PageManager: View {
    
    @EnvironmentObject var authVM: AuthViewModel
    
    var body: some View {
        Group {
            if authVM.userSession {
                NavigationManager()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    PageManager()
}
