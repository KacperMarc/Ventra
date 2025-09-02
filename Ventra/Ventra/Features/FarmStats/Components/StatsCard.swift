//
//  StatsCard.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 31/08/2025.
//

import SwiftUI

enum StatsCardType: String, CaseIterable, Identifiable {
    case dailyProduction, dailyRevenue, averageEfficiency, peakProduction, workingTurbines, monthlyProduction, averageWindSpeed
    
    var id: String { rawValue }
    
    var title: String {
        switch self {
        case .dailyProduction: return "Daily Production"
        case .dailyRevenue: return "Daily Revenue"
        case .averageEfficiency: return "Average Efficiency"
        case .peakProduction: return "Peak Production"
        case .workingTurbines: return "Working Turbines"
        case .monthlyProduction: return "Monthly Production"
        case .averageWindSpeed: return "Average Wind Speed"
        }
    }
    
    var icon: String {
        switch self {
        case .dailyProduction: return "bolt.square"
        case .dailyRevenue: return "dollarsign.circle.fill"
        case .averageEfficiency: return "wind"
        case .peakProduction: return "bolt.square"
        case .workingTurbines: return "checkmark.rectangle.stack"
        case .monthlyProduction: return "bolt.square"
        case .averageWindSpeed: return "fan"
        }
    }
    
    var affix: String {
        switch self {
        case .dailyProduction, .monthlyProduction, .peakProduction: return "MW"
        case .averageEfficiency: return "%"
        case .workingTurbines: return "pcs"
        case .dailyRevenue: return "$"
        case .averageWindSpeed: return "m/s"
        }
    }
    
}

struct StatsCard: View {
    var cardType: StatsCardType
    
    var body: some View {
        VStack {
            Image(systemName: cardType.icon)
                .foregroundStyle(Color.green)
            HStack {
                Text("123")
                    .font(.largeTitle)
                Text(cardType.affix)
                    .font(.subheadline)
            }
            Text(cardType.title)
                .font(.subheadline)
        }
        .padding()
        .frame(width: 180, height: 140)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
    }
}
