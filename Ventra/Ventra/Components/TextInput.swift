//
//  TextInput.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 12/07/2025.
//

import SwiftUI

struct TextInput: View {
    @Binding var text: String
    let title: String
    let placeholder: String
    @State var isSecureTextEntry: Bool = false
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.headline)
            if isSecureTextEntry {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 12))
                    
            } else {
                TextField(placeholder, text: $text)
                    .font(.system(size: 12))

            }
            
                
            Divider()
                
        }
    }
}

#Preview {
    TextInput(text: .constant(""), title: "Email address", placeholder: "name@example.com")
}
