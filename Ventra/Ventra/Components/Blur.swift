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
                .fill(.ultraThinMaterial)
                .frame(height: 140)
                .mask(
                    LinearGradient(
                        colors: [
                            .white.opacity(0.1),
                            .white.opacity(0.9),
                            .white
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .cornerRadius(16)
        }
    }
}

#Preview {
    Blur()
}
