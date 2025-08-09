//
//  TurbineInfoView.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 19/07/2025.
//

import SwiftUI

struct TurbineDetailsView: View {
    
    @State var tab: InformationTabItem = .info
    
    var body: some View {
        VStack(spacing: 16) {
            InformationTabBar(selectedTab: $tab)
            TabView(selection: $tab) {
                ForEach(InformationTabItem.allCases) { tab in
                    tab.view
                        .frame(maxWidth: .infinity,maxHeight: .infinity)
                        .tag(tab)
                }
            }.tabViewStyle(.page(indexDisplayMode: .never))
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .padding(.top)
        .background(Color.white)
        .cornerRadius(16)
    }
}


struct TurbineInfoView: View {
    
    var turbine: Turbine
    
    init(turbine: Turbine) {
        self.turbine = turbine
    }
    
    var body: some View {
        VStack(spacing: 16) {
            VStack(alignment: .leading) {
                VStack{
                    HStack{
                        Text("\(turbine.name)")
                            .font(.system(size: 28, weight: .bold))
                        Spacer()
                        HStack{
                            Image(systemName: turbine.status.systemImage)
                                .foregroundColor(turbine.status.color)
                            Text(turbine.status.displayName)
                                .foregroundColor(turbine.status.color).font(.headline)
                        }.padding(.all, 4)
                            .background(turbine.status.color.opacity(0.15)).clipShape(Capsule())
                    }
                    HStack {
                        Text("ID: \(turbine.turbineId)")
                            .font(.caption)
                        Spacer()
                        Text("Last update: 1s ago")
                            .font(.caption)
                    }
                }
                .padding()
            }
            .background(Color.white)
            .cornerRadius(16)
            //needs to pull out to the very bottom in order that the screen will be scrollable and not only just embedded list
            TurbineDetailsView()
        }
        .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 4)
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray.opacity(0.15))
    }
}

#Preview {
    TurbineInfoView(turbine: sampleTurbines[2])
}
