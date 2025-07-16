//
//  TurbineInformationView.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 13/07/2025.
//

import SwiftUI
import Foundation

struct TurbineInformationView: View {
    
    var turbine = WindTurbine(
        name: "Wiatrak 1",
        turbineId: "WT-001",
        speed: 25.4,
        power: 1850,
        status: .running,
        efficiency: 87,
        latitude: 52.2297,
        longitude: 21.0122
    )
    
    var body: some View {
    Text("Hello, World!")
    }
}

#Preview {
    TurbineInformationView()
}
