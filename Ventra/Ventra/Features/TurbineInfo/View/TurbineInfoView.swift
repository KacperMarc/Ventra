//
//  TurbineInfoView.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 19/07/2025.
//

import SwiftUI

struct TurbineInfoView: View {
    
    var turbine: Turbine
    
    init(turbine: Turbine) {
        self.turbine = turbine
    }
    
    var body: some View {
        VStack {
            VStack {
                Text("\(turbine.turbineId)")
                //główne informacje ze statusem i danymi
                //scroll view horyzontalny z info o wydajnosci, utrzymanie i serwis oraz lokalizacji
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(.all)
        .background(Color.gray.opacity(0.15))

    }
}

#Preview {
    TurbineInfoView(turbine: sampleTurbines[0])
}
