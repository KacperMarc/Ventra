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
            ZStack {
                Blur()
                    .ignoresSafeArea(.all)
                TabBar(selectedTab: $selectedTab)
            }
            .offset(y: appState.showTabBar ? 0 : 200)
            .animation(.easeOut(duration: 1), value: appState.showTabBar)
        }
        .ignoresSafeArea(.all)
        .background(Color.gray.opacity(0.15))
    }
}

#Preview {
    NavigationManager()
}
