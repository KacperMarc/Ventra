//
//  TurbineSimple.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 07/09/2025.
//

struct TurbineSimple: Codable {
    let id: String
    let name: String
    let status: String
}

struct TurbinesResponse: Codable {
    let data: [TurbineSimple]
}
