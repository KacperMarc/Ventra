//
//  Blur.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 19/07/2025.
//

import SwiftUI

struct Blur: View {
    var body: some View {
        VStack {
            Spacer()
            Rectangle()
            .fill(.clear)
            .background(
            LinearGradient(
                stops: [
                    .init(color: Color.clear, location: 0.0),
                    .init(color: Color.white.opacity(0.02), location: 0.1),
                    .init(color: Color.white.opacity(0.3), location: 0.2),
                    .init(color: Color.white.opacity(0.75), location: 0.3),
                    .init(color: Color.white.opacity(0.75), location: 0.5),
                    .init(color: Color.white.opacity(0.8), location: 0.7),
                    .init(color: Color.white.opacity(0.85), location: 0.85),
                    .init(color: Color.white.opacity(0.9), location: 1.0)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            )
            .frame(height: 145)
            .allowsHitTesting(false)
        }
    }
}

#Preview {
    Blur()
}
