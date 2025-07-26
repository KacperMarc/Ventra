//
//  SwiftUIView.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 19/07/2025.
//

import SwiftUI
// można zrobić hashable żeby zapisywał w @AppStorage ostatnią otwarta kartę
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

struct TabBar: View {
    @Binding var selectedTab: TabItem
    
    var body: some View {
        VStack {
            Spacer ()
            HStack(spacing: 20) {
                ForEach(TabItem.allCases) { tab in
                    if selectedTab == tab {
                        HStack {
                            Image(systemName: tab.systemImage)
                            Text(tab.title)
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 12)
                        .background(Color.ventraGreenDark)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .transition(.scale)
                    } else {
                        Image(systemName: tab.systemImage)
                            .font(.system(size: 20))
                            .foregroundColor(.black)
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
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color.white.opacity(0.7))
                    .shadow(color: .black.opacity(0.4), radius: 10, x: 0, y: 4)
            )
            .padding(.horizontal, 24)
            .padding(.bottom, 24)
            .padding(.top, 8)
            
        }
    }
}

private struct TabBarPreviewWrapper: View {
    @State private var selectedTab: TabItem = .feed

    var body: some View {
        TabBar(selectedTab: $selectedTab)
    }
}

#Preview {
    TabBarPreviewWrapper()
}
