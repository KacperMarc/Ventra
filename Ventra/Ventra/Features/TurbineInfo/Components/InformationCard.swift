//
//  InformationCard.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 02/08/2025.
//

import SwiftUI

struct InformationCard: View {
    var body: some View {
        HStack {
            List {
                Section("Details") {
                    AccountSettingsRows(image: "gear", title: "Status", content: "Running")
                    AccountSettingsRows(image: "bolt", title: "Power", content: "1850 kW")
                    AccountSettingsRows(image: "checkmark.rectangle.stack", title: "Efficiency", content: "87%")
                    AccountSettingsRows(image: "wind", title: "Wind speed", content: "12.4 m/s")
                }
                Section("Performance"){
                    AccountSettingsRows(image: "arrow.trianglehead.clockwise.rotate.90", title: "Rotor speed", content: "19 RPM")
                    AccountSettingsRows(image: "thermometer.variable", title: "Temperature", content: "25°C")
                    AccountSettingsRows(image: "waveform.path.ecg", title: "Vibration", content: " 0.25mm/s")
                    AccountSettingsRows(image: "location", title: "Wind bearing", content: "150°")
                }
                Section("Production"){
                    AccountSettingsRows(image: "bolt", title: "Daily energy", content: "44.4 MWh")
                    AccountSettingsRows(image: "thermometer.variable", title: "Temperature", content: "25°C")
                    AccountSettingsRows(image: "waveform.path.ecg", title: "Vibration", content: " 0.25mm/s")
                    AccountSettingsRows(image: "location", title: "Wind bearing", content: "150°")
                }
            }
            .listSectionSeparator(.hidden)
            .scrollContentBackground(.hidden)
            .background(Color.white)
        }
        .ignoresSafeArea(.all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    InformationCard()
}
