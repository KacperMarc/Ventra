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
                
            
            
            HStack(alignment: .center, spacing: 8) {
                
                    
                VStack {
                        Image(systemName: "bolt.square")
                            .foregroundStyle(.blue)
                        Text("Power")
                        .fontWeight(.semibold)
                    Text("1000 kW").font(.caption)
                        
                    }
                .padding([.top, .bottom])

                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.secondary.opacity(0.05))
                    .cornerRadius(16)
                
                
                
                    
                VStack {
                    Image(systemName: "checkmark.rectangle.stack")
                        .foregroundStyle(.green)
                    Text("Working").fontWeight(.semibold)
                    Text("3/5").font(.caption)
                }
                .padding([.top, .bottom])

                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.secondary.opacity(0.05))
                .cornerRadius(16)
                
                    
                    
                VStack {
                    Image(systemName: "wind")
                        .foregroundStyle(.cyan)
                    Text("Efficency").fontWeight(.semibold)
                    Text("87%").font(.caption)
                        
                }
                .padding([.top, .bottom], 4)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.secondary.opacity(0.05))
                .cornerRadius(16)
                
                
            }
            .padding([.leading, .trailing, .bottom])
            .frame(maxWidth: .infinity, maxHeight: .infinity)

            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .cornerRadius(16)
        
        
        
    }
}

#Preview {
    OverviewCard()
}
