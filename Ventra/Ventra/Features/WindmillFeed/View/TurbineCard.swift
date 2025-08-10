//
//  TurbineInformationView.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 13/07/2025.
//

import SwiftUI
import Foundation

struct TurbineCard: View {
    
    var turbine: Turbine
    
    init(turbine: Turbine) {
        self.turbine = turbine
    }
    
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "fan")
                .font(.system(size: 48))
                .foregroundStyle(turbine.status.color)
                .frame(width: 90, height: 80)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 4) {
                Text(turbine.name)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(turbine.turbineId)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            HStack {
                Image(systemName: turbine.status.systemImage)
                    .foregroundStyle(turbine.status.color)
                Text(turbine.status.displayName)
                    .foregroundStyle(turbine.status.color)
                    .fontWeight(.medium)
            }
            .font(.subheadline)
            .padding(.trailing)
        }
        .frame(maxWidth: .infinity)
        .background(Color.secondary.opacity(0.05))
        .cornerRadius(16)
    }
}


#Preview {
    TurbineCard(turbine: sampleTurbines[0])
}
