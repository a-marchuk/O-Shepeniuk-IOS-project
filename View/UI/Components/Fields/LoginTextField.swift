//
//  LoginTextField.swift
//  Test
//
//  Created by Student on 25.01.2024.
//

import SwiftUI

struct LoginTextField: View {
    @Binding var text: String
    var placeholder: String
    @State private var errorMessage: String = ""
    @State private var showError: Bool = false
    @ObservedObject var viewModel: LoginViewModel
    
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(.white.opacity(0.65))
                    .padding(.leading, 15)
            }
            
            TextField(placeholder, text: $text)
                .padding()
                .frame(height: 54.0)
                .foregroundColor(.white.opacity(0.65))
                .background(Color.clear)
                .cornerRadius(12)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .strokeBorder(viewModel.isLoginButtonTapped && !viewModel.isLoginValid ? Color.red : Color(red: 0.86, green: 1, blue: 0.72), lineWidth: 2)
                )
        }
        .onAppear {
            viewModel.isLoginValid = true
        }
        .onChange(of: text) { _ in
            viewModel.isLoginValid = viewModel.isValidLogin()
        }
    }
}




