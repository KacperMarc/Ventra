//
//  StatsCard.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 31/08/2025.
//

import SwiftUI

enum StatsCardType {
    case dailyProduction, dailyRevenue, averageEfficiency, peakProduction, workingTurbines, monthlyProduction, averageWindSpeed
}

struct StatsCard: View {
    var body: some View {
        VStack {
            Image(systemName: "bolt")
                .foregroundStyle(Color.green)
            HStack {
                Text("123")
                    .font(.largeTitle)
                Text("MW")
                    .font(.subheadline)
            }
            Text("Daily Production")
                .font(.subheadline)
        }
        .padding()
        .frame(width: 180, height: 140)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
    }
}

#Preview {
    StatsCard()
}
