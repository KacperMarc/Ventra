//
//  TurbineInfoView.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 19/07/2025.
//

import SwiftUI

struct TurbineInfoCard: View {
    
    var turbine: Turbine
    
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            
                
            HStack {
                VStack {
                        Image(systemName: "bolt.square")
                            .foregroundStyle(.blue)
                        Text("Output")
                        .fontWeight(.semibold)
                    Text(String(turbine.power)).font(.caption)
                        
                    }
                .padding(.vertical, 8)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.secondary.opacity(0.05))
                .cornerRadius(16)
                
                
                
                    
                VStack {
                    Image(systemName: "checkmark.rectangle.stack")
                        .foregroundStyle(.green)
                    Text("Efficency").fontWeight(.semibold)
                    Text(String(turbine.efficiency)).font(.caption)
                }
                .padding(.vertical, 8)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.secondary.opacity(0.05))
                .cornerRadius(16)
                
                    
                    
                VStack {
                    Image(systemName: "wind")
                        .foregroundStyle(.cyan)
                    Text("Speed").fontWeight(.semibold)
                    Text(String(turbine.speed)).font(.caption)
                        
                }
                .padding(.vertical, 8)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.secondary.opacity(0.05))
                .cornerRadius(16)
            }
            .frame(maxWidth: .infinity, alignment: .center)
            
            
        }
        
        

    }
}

struct TurbineInfoView: View {
    
    var turbine: Turbine
    
    init(turbine: Turbine) {
        self.turbine = turbine
    }
    
    var body: some View {
        VStack {
           
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
                        TurbineInfoCard(turbine: turbine)
                            .frame(maxHeight: 80)
                            .padding(.top)
                        
                        
                    }.padding()
                }
                
                .background(Color.white)
                    .cornerRadius(16)
                    
                //główne informacje ze statusem i danymi
                //scroll view horyzontalny z info o wydajnosci, utrzymanie i serwis oraz lokalizacji za pomoca enum i viewbuilder
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(.all)
        .background(Color.gray.opacity(0.15))

    }
}

#Preview {
    TurbineInfoView(turbine: sampleTurbines[2])
}
