//
//  AccountSettingsRows.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 04/08/2025.
//
import SwiftUI

struct AccountSettingsRows: View {
    
    let image: String
    let title: String
    let content: String
    //let tintColor: Color
    
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: image)
                .imageScale(.small)
                .font(.title)
                
            Text(title)
                .font(.subheadline)
                .foregroundStyle(.black)
            Spacer()
            Text(content)
                .fontWeight(.bold)
        }
        
    }
}
