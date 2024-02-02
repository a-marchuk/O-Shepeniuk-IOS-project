//
//  PasswordTextField.swift
//  Test
//
//  Created by Student on 25.01.2024.
//

import SwiftUI

struct PasswordTextField: View {
    @Binding var password: String
    var placeholder: String
    @ObservedObject var viewModel: LoginViewModel
    @State private var isSecureTextEntry: Bool = false
    
    var body: some View {
        HStack(){
            ZStack(alignment: .leading) {
                if password.isEmpty {
                    Text(placeholder)
                        .foregroundColor(.white.opacity(0.65))
                        .padding(.leading, 15)
                }
                
                Group {
                    if isSecureTextEntry {
                        TextField("Enter a password", text: $password)
                    }else {
                        SecureField("Enter a password", text: $password)
                    }
                }
                .padding()
                .frame(height: 54.0)
                .foregroundColor(.white.opacity(0.65))
                
            }
            Button(action: {
                isSecureTextEntry.toggle()
            }) {
                Image(systemName: isSecureTextEntry ? "eye" : "eye.slash")
                    .foregroundColor(.white)
            }
            .padding(.trailing,15)
        }
        .background(Color.clear)
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .strokeBorder(viewModel.isLoginButtonTapped && !viewModel.isPasswordValid ? Color.red : Color(red: 0.86, green: 1, blue: 0.72), lineWidth: 2)
        )
        .onAppear {
            viewModel.isPasswordValid = true
        }
        .onChange(of: password) { _ in
            viewModel.isPasswordValid = viewModel.isValidPassword()
        }
    }
}

