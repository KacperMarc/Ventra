//
//  TurbineInformationView.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 13/07/2025.
//

import SwiftUI
import Foundation

struct TurbineInfoCard: View {
    //initialisation within construction needed
    var turbine = Turbine(
        name: "Turbine 01",
        turbineId: "TT-01",
        speed: 25.4,
        power: 1850,
        status: .running,
        efficiency: 87,
        latitude: 52.2297,
        longitude: 21.0122
    )
    
    var body: some View {
        VStack(spacing: 16) {
            // MARK: - header
            HStack() {
                
                Image(systemName: "fan")
                    .font(.system(size: 48))
                    .foregroundColor(turbine.status.color)
                    .frame(width: 90, height: 80)
                    .clipShape(Circle())
                    
                VStack(alignment: .leading, spacing: 4) {
                    Text(turbine.name)
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text(turbine.turbineId)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                }
                HStack {
                    Image(systemName: turbine.status.systemImage)
                        .foregroundColor(turbine.status.color)
                    Text(turbine.status.displayName)
                        .foregroundColor(turbine.status.color)
                        .fontWeight(.medium)
                }
                .font(.subheadline)
                .padding()
               
                
            }
            .background(Color.secondary.opacity(0.05))
            .cornerRadius(16)
            .padding()
            
            
           
            
            
        }
        .background(Color.white)
        .cornerRadius(16)
        
    }
}

#Preview {
    TurbineInfoCard()
}
