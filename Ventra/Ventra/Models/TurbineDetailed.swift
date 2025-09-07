//
//  TurbineDetailed.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 07/09/2025.
//

struct TurbineDetailed: Codable {
    let id: String
    let power: Int
    let efficiency: Int
    let windSpeed: Double
    let rotorSpeed: Int
    let temperature: Int
    let vibration: Int
    let windBearing: Int
    let dailyEnergy: Double
    let latitude: Double
    let longitude: Double
}
