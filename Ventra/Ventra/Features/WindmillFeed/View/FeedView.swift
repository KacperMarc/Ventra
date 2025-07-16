//
//  FeedView.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 13/07/2025.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        VStack() {
            // MARK: - header
            Text("Farm overview")
                .font(.headline)
            .cornerRadius(16)
            
            HStack {
                HStack {
                    Image(systemName: "bolt.square")
                    VStack {
                        Text("Power")
                        Text("1000 kW")
                        
                    }
                }
                HStack {
                    Image(systemName: "sum")
                    VStack {
                        Text("Working")
                        Text("3/5")
                    }
                    
                }
                HStack {
                    Image(systemName: "wind")
                    VStack {
                        Text("Efficency:")
                        Text("87%")
                        
                    }
                }
                
            }
            
            
            

        }
        .background(Color.secondary.opacity(0.05))
        .cornerRadius(16)
        .frame(maxWidth: .infinity, alignment: .center)
        .padding()
        
        NavigationStack {
            
            ScrollView {
                TurbineInformationView()
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
            }

        }
        
    }
}

#Preview {
    FeedView()
}
