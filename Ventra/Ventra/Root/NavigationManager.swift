//
//  NavigationManager.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 12/07/2025.
//

import SwiftUI


struct NavigationManager: View {
    //w przyszlosci zapisanie ostatniej karty w @appstorage?
    @State private var selectedTab: TabItem = .feed
    @EnvironmentObject var appState: AppState

    var body: some View {
        ZStack {
            // MARK: - Selected View
            selectedTab.view
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea(.all)
            
            // MARK: - Blur
           

            // MARK: - Tabbar
            
            if appState.showTabBar {
                Blur()
                .ignoresSafeArea(.all)
                TabBar(selectedTab: $selectedTab)
            }
            
            
                
        }
        .ignoresSafeArea(.all)
        .background(Color.gray.opacity(0.15))
        
    }
}



#Preview {
    NavigationManager()
}
