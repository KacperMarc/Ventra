//
//  FarmStatsView.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 13/07/2025.
//

import SwiftUI

struct FarmStatsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {
                    GroupBox("Energy production") {
                        
                    }
                    GroupBox("Turbine efficiency") {
                        
                    }
                    GroupBox("Turbine status") {
                        
                    }
                    // consider also presenting monthly/annual stats
                    GroupBox("Daily production") {
                        
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 4)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Farm Statistics")
                        .fontWeight(.bold)
                        .font(.system(size: 28, weight: .bold))
                }
            }
            .background(Color.gray.opacity(0.15))
        }
        .tint(.black)
    }
}

#Preview {
    FarmStatsView()
}
