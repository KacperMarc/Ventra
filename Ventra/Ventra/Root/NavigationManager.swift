//
//  NavigationManager.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 12/07/2025.
//

import SwiftUI


struct NavigationManager: View {
    //in the future saving last opened tab in @appstorage
    @State private var selectedTab: TabItem = .feed
    @EnvironmentObject var appState: AppState

    var body: some View {
        // group?
        ZStack {
            selectedTab.view
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea(.all)
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
