//
//  OverviewCard.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 17/07/2025.
//

import SwiftUI

struct OverviewCard: View {
    var body: some View {
        // MARK: - Overview
        VStack(alignment: .leading){
            Text("Overview")
                .padding([.leading, .top])
                .font(.headline)
                .fontWeight(.semibold)
                
            
            
            HStack(alignment: .center, spacing: 16) {
                
                    
                VStack {
                        Image(systemName: "bolt.square")
                            .foregroundStyle(.blue)
                        Text("Power")
                        Text("1000 kW")
                        
                    }
                    .padding()
                
                    .background(Color.secondary.opacity(0.05))                .cornerRadius(16)
                
                
                
                    
                VStack {
                    Image(systemName: "checkmark.rectangle.stack")
                        .foregroundStyle(.green)
                    Text("Working")
                    Text("3/5")
                }
                .padding()
                
                .background(Color.secondary.opacity(0.05))
                .cornerRadius(16)
                
                    
                    
                VStack {
                    Image(systemName: "wind")
                        .foregroundStyle(.cyan)
                    Text("Efficency")
                    Text("87%")
                        
                }
                .padding()
                
                .background(Color.secondary.opacity(0.05))
                .cornerRadius(16)
                
                
            }
            .padding([.leading, .trailing, .bottom])
            
        }
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(16)
        
        
        
    }
}

#Preview {
    OverviewCard()
}
