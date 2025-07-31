//
//  FeedView.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 13/07/2025.
//

import SwiftUI

let sampleTurbines: [Turbine] = [
    Turbine(
        name: "Turbine A",
        turbineId: "A001",
        speed: 12.5,
        power: 1500,
        status: .running,
        efficiency: 90,
        latitude: 53.123,
        longitude: 18.456
    ),
    Turbine(
        name: "Turbine B",
        turbineId: "B002",
        speed: 10.3,
        power: 1300,
        status: .error,
        efficiency: 78,
        latitude: 53.130,
        longitude: 18.460
    ),
    Turbine(
        name: "Turbine C",
        turbineId: "C003",
        speed: 8.9,
        power: 900,
        status: .idle,
        efficiency: 65,
        latitude: 53.140,
        longitude: 18.470
    ),
    Turbine(
        name: "Turbine A",
        turbineId: "A001",
        speed: 12.5,
        power: 1500,
        status: .running,
        efficiency: 90,
        latitude: 53.123,
        longitude: 18.456
    ),
    Turbine(
        name: "Turbine B",
        turbineId: "B002",
        speed: 10.3,
        power: 1300,
        status: .error,
        efficiency: 78,
        latitude: 53.130,
        longitude: 18.460
    ),
    Turbine(
        name: "Turbine C",
        turbineId: "C003",
        speed: 8.9,
        power: 900,
        status: .idle,
        efficiency: 65,
        latitude: 53.140,
        longitude: 18.470
    )
]


struct FeedView: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        
        NavigationStack {
            VStack() {
                ScrollView {
                    VStack{
                        // MARK: - header
                        // scrollując schowaj w dol tabbar i sfolduj overview
                        OverviewCard()
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding()
                        
                        
                        VStack(alignment: .leading){
                            Text("Turbines")
                                .padding([.leading, .top])
                                .font(.headline)
                                .fontWeight(.semibold)
                            VStack(alignment: .center, spacing: 0){
                                // w przyszlosci potrzebne weak self jesli dane beda fetchowane
                                ForEach(sampleTurbines) { turbine in
                                    NavigationLink(destination: TurbineInfoView(turbine: turbine).onAppear {
                                        // animowanie wysuwania w dol i w gore
                                        withAnimation {
                                            appState.showTabBar = false
                                        }
                                    }
                                    .onDisappear {
                                        withAnimation {
                                            appState.showTabBar = true
                                        }
                                    }
                                    .navigationTitle(turbine.name)) {
                                        // zaczyna robić sie problem z nazewnictwem i sie meisza, trzeba to zmienic/uporządkować
                                        TurbineCard(turbine: turbine)
                                            .padding([.leading, .trailing, .bottom])
                                    }
                                    

                                }
                       
                                    
                            }
                            
                        }
                        
                        .background(Color.white)
                        .cornerRadius(16)
                        .padding([.leading, .trailing, .bottom])
                        
                        
                    }
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 4)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Turbine Feed")
                        .fontWeight(.bold)
                        .font(.system(size: 28, weight: .bold))
                }
            }
            .background(Color.gray.opacity(0.15))
            
            
           

        }
        .foregroundStyle(.black)
        .tint(.black)
        
        
        
        
        
        
    }
    
}

#Preview {
    FeedView()
}
