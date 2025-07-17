//
//  FeedView.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 13/07/2025.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        
        NavigationStack {
            VStack() {
                ScrollView {
                    VStack{
                        // MARK: - header
                        
                        OverviewCard()
                            .frame(maxWidth: .infinity, alignment: .center)

                        
                        TurbineInfoCard()
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding()
                    }
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Turbine Feed")
                        .fontWeight(.bold)
                        .font(.system(size: 28, weight: .bold))
                }
            }
            .background(Color.gray.opacity(0.15))
            
            
           

        }
        
        
        
        
        
    }
    
}

#Preview {
    FeedView()
}
