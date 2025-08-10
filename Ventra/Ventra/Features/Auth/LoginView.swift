//
//  SwiftUIView.swift
//  Ventra
//
//  Created by Kacper Marciszewski on 12/07/2025.
//

import SwiftUI
import Foundation

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("ventra")
                    .resizable()
                    .frame(width: 160, height: 160)
                    .padding(.vertical, 30)
                
                // MARK: - fields
                VStack(spacing: 20){
                    TextInput(text: $email, title: "Email Address", placeholder: "name@example.com")
                        .textInputAutocapitalization(.never)
                        .keyboardType(.emailAddress)
                    TextInput(text: $password, title: "Password", placeholder: "Enter your password", isSecureTextEntry: true)
                }
                .padding(.horizontal)
                
                // MARK: - sign in button
                Button{
                    Task {
                        //try await viewModel.signIn(withEmail: email, password: password)
                    }
                } label: {
                    HStack {
                        Text("Sign In")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                }
                .disabled(!formIsValid)
                .opacity(formIsValid ? 1 : 0.5)
                .padding(.horizontal)
                .frame(width: UIScreen.main.bounds.width - 32, height: 40)
                .foregroundStyle(.white)
                .background(Color.ventraGreenDark)
                .cornerRadius(10)
                .padding(.top)
                .padding()
        
                // MARK: - sign up button
                Spacer()
                NavigationLink {
                    RegistrationView()
                        .navigationTitle("Create an account")
                } label: {
                    VStack(spacing: 2) {
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(.bold)
                    }
                    .foregroundStyle(Color.ventraGreenLight)
                }
            }
        }
    }
}
// MARK: - Login Form Validation
extension LoginView: AutheticationFormProtocol {
    var formIsValid: Bool {
        !email.isEmpty && email.contains("@") && !password.isEmpty && password.count >= 6
    }
}

#Preview {
    LoginView()
}
