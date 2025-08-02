//
//  TabBar.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 01/08/2025.
//

import SwiftUI

enum InformationTabItem: String, CaseIterable, Identifiable {
    case info = "info.circle"
    case stats = "chart.line.uptrend.xyaxis.circle"
    case maintenance = "wrench.and.screwdriver"
    case location = "mappin.circle"
    

    var id: String { rawValue }

    var title: String {
        switch self {
        case .info: return "Overview"
        case .stats: return "Stats"
        case .maintenance: return "Maintenance"
        case .location: return "Location"
        }
    }

    var systemImage: String {
        rawValue
    }

    @ViewBuilder
    var view: some View {
        switch self {
        case .info:
            InformationCard()
        case .stats:
            StatsCard()
        case .maintenance:
            MaintenanceCard()
        case .location:
            LocationCard()
        }
    }
}

struct InformationTabBar: View {
    @Binding var selectedTab: InformationTabItem
    
    var body: some View {
        VStack {
           
            HStack(spacing: 8) {
                ForEach(InformationTabItem.allCases) { tab in
                    if selectedTab == tab {
                        HStack {
                            Image(systemName: tab.systemImage)
                                .font(.system(size: 12))
                            Text(tab.title)
                        }
                        .padding(.horizontal, 8)
                        .padding(.vertical, 8)
                        .background(Color.ventraGreenDark)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .transition(.scale)
                    } else {
                        Image(systemName: tab.systemImage)
                            .font(.system(size: 12))
                            .padding(.horizontal, 8)
                            .foregroundColor(.black)
                            .onTapGesture {
                                withAnimation {
                                    selectedTab = tab
                                }
                            }
                    }
                }
            }
            
            .background(
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color.white.opacity(0.7))
                    .shadow(color: .black.opacity(0.4), radius: 5, x: 0, y: 2)
            )
            
            
        }
    }
}

private struct InformationTabBarPreviewWrapper: View {
    @State private var selectedTab: InformationTabItem = .info

    var body: some View {
        InformationTabBar(selectedTab: $selectedTab)
    }
}

#Preview {
    InformationTabBarPreviewWrapper()
}

