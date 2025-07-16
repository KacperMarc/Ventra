//
//  Windmill.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 16/07/2025.
//

import Foundation
import SwiftUICore

struct Turbine: Identifiable {
    let id = UUID()
    let name: String
    let turbineId: String
    let speed: Double
    let power: Int
    let status: TurbineStatus
    let efficiency: Int
    let latitude: Float
    let longitude: Float
}

enum TurbineStatus: String, CaseIterable {
    case running = "running"
    case idle = "idle"
    case error = "error"
    
    var displayName: String {
        switch self {
        case .running: return "Running"
        case .idle: return "Idle"
        case .error: return "Error"
        }
    }
    
    var color: Color {
        switch self {
        case .running: return .green
        case .idle: return .orange
        case .error: return .red
        }
    }
    
    var systemImage: String {
        switch self {
        case .running: return "checkmark.circle.fill"
        case .idle: return "pause.circle.fill"
        case .error: return "exclamationmark.triangle.fill"
        }
    }
}
