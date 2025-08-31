//
//  FeedView.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 13/07/2025.
//

import SwiftUI

struct FoldedOverviewCard: View {
    var body: some View {
        VStack {
            Text("Folded Overview Card")
        }.background(Color.blue)
    }
}

struct FeedView: View {
    @EnvironmentObject var appState: AppState
    @State var changeHeaderCard = false
    
    var body: some View {
        NavigationStack {
            VStack() {
                ScrollView(.vertical) {
                    VStack {
                        // MARK: - overview card
                        // jak scrollujesz to ta druga karta musi się pojawiać na scrollview u góry wiec musi byc zstck
                        // albo modifier który wtedy pokazuje na górze w toolbarze info który się rozsunie
                        Group {
                            if !changeHeaderCard { OverviewCard().transition(.opacity.combined(with: .slide)) }
                            else { FoldedOverviewCard().transition(.opacity.combined(with: .slide)) }
                        }
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                        
                        // MARK: - feed
                        VStack(alignment: .leading){
                            Text("Turbines")
                                .padding([.leading, .top])
                                .font(.headline)
                                .fontWeight(.semibold)
                            VStack(alignment: .center, spacing: 0){
                                // weak self in the future when the data was fetched
                                ForEach(sampleTurbines) { turbine in
                                    NavigationLink(value: turbine) {
                                        TurbineCard(turbine: turbine)
                                            .background(Color.white)
                                            .cornerRadius(16)
                                            .shadow(color: .black.opacity(0.15), radius: 5, x: 0, y: 4)
                                            .padding([.leading, .trailing, .bottom])
                                    }
                                }
                                .navigationDestination(for: Turbine.self) { turbine in
                                    TurbineInfoView(turbine: turbine)
                                        .onAppear { appState.showTabBar = false }
                                        .onDisappear { appState.showTabBar = true }
                                }
                            }
                        }
                        .background(Color.white)
                        .cornerRadius(16)
                        .padding([.leading, .trailing, .bottom])
                    }
                }.onScrollGeometryChange(for: CGFloat.self, of: { geometry in
                    geometry.contentOffset.y
                }, action: { oldValue, newValue in
                    if newValue <= 0 {
                        appState.showTabBar = true
                        changeHeaderCard = false
                        print(newValue)
                    } else if abs(newValue - oldValue) > 20 {
                        appState.showTabBar = newValue < oldValue
                        changeHeaderCard = true
                        print(newValue)
                    }
                })
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

