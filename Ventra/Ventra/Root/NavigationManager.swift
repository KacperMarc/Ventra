//
//  NavigationManager.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 12/07/2025.
//

import SwiftUI


enum TabItem: String, CaseIterable, Identifiable {
    case feed = "fan.floor"
    case map = "map"
    case stats = "chart.line.uptrend.xyaxis"

    var id: String { rawValue }

    var title: String {
        switch self {
        case .feed: return "Turbine Feed"
        case .map: return "Farm Map"
        case .stats: return "Statistics"
        }
    }

    var systemImage: String {
        rawValue
    }

    @ViewBuilder
    var view: some View {
        switch self {
        case .feed:
            FeedView()
        case .map:
            FarmMapView()
        case .stats:
            FarmStatsView()
        }
    }
}

struct NavigationManager: View {
    //w przyszlosci zapisanie ostatniej karty w coradata
    @State private var selectedTab: TabItem = .feed

    var body: some View {
        VStack(spacing: 0) {
            selectedTab.view
                .frame(maxWidth: .infinity, maxHeight: .infinity)

            HStack(spacing: 20) {
                ForEach(TabItem.allCases) { tab in
                    if selectedTab == tab {
                        HStack {
                            Image(systemName: tab.systemImage)
                            Text(tab.title)
                        }
                        .padding(.horizontal, 16)
                        .padding(.vertical, 10)
                        .background(Color.ventraGreenDark)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .transition(.scale)
                    } else {
                        Image(systemName: tab.systemImage)
                            .font(.system(size: 20))
                            .foregroundColor(.gray)
                            .onTapGesture {
                                withAnimation {
                                    selectedTab = tab
                                }
                            }
                    }
                }
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 12)
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.white)
                    .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 4)
            )
            .padding(.horizontal, 24)
            .padding(.bottom, 24)
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color.gray.opacity(0.15))
    }
}
#Preview {
    NavigationManager()
}
