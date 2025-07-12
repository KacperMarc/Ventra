//
//  RegistrationView.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 12/07/2025.
//

import SwiftUI

struct RegistrationView: View {
    
    @State private var email: String = ""
    @State private var name: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        VStack {
            
            VStack(spacing: 24) {
                
                TextInput(text: $email, title: "Email Address", placeholder: "name@example.com")
                    .textInputAutocapitalization(.never)

                TextInput(text: $name, title: "Name", placeholder: "Enter your name")
                TextInput(text: $password, title: "Password", placeholder: "Enter your password", isSecureTextEntry: true)
                ZStack(alignment: .trailing){
                    TextInput(text: $confirmPassword, title: "Confirm Password", placeholder: "Confirm your password", isSecureTextEntry: true)
                    
                    if !password.isEmpty && !confirmPassword.isEmpty {
                        if password != confirmPassword {
                            Image(systemName: "exclamationmark.triangle.fill")
                                .foregroundColor(.red)
                                .imageScale(.large)
                        } else {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.green)
                                .imageScale(.large)
                        }
                            
                    }
                }
            }
            .padding(.horizontal)
            Button{
                Task {

                    //try await viewModel.createUser(withEmail: email, password: password, name: name)
                }
            }label: {
                HStack {
                    Text("Sign UP")
                        .fontWeight(.semibold)
                    Image(systemName: "arrow.right")
                    
                }
            }
            .disabled(!formIsValid)
            .opacity(formIsValid ? 1 : 0.5)
            .padding(.horizontal)
                .frame(width: UIScreen.main.bounds.width - 32, height: 40)
                .foregroundStyle(.white)
                .background(Color.black)
                .cornerRadius(10)
                .padding(.top)
                .padding()
            
        }
    }
}
// MARK: - Login Form Validation
extension RegistrationView: AutheticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty && email.contains("@") && !password.isEmpty && password.count >= 6 && password == confirmPassword && !name.isEmpty
    }
}

#Preview {
    RegistrationView()
}
