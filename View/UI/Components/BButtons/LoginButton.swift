//
//  LoginButton.swift
//  Test
//
//  Created by Student on 25.01.2024.
//

import SwiftUI

struct LoginButton: View {
    @State private var isActive: Bool = false
    var action: () -> Void
    
    var body: some View {
        NavigationLink(destination: HomeView(), isActive: $isActive) {
            EmptyView()
        }
        .hidden() // Приховує фактичний NavigationLink

        Button(action: {
            self.action()
            self.isActive = true // Активує NavigationLink
        }) {
            Text(StringConstants.Login.loginText)
                .font(Font.custom("Rubik", size: 18).weight(.medium))
                .foregroundColor(.black)
                .frame(width: 295, height: 54, alignment: .center)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color(red: 0.46, green: 0.88, blue: 0.04), Color(red: 0.04, green: 0.88, blue: 0.63)]), startPoint: .leading, endPoint: .trailing)
                )
                .cornerRadius(8)
                .padding(.top, 32)
        }
    }
}
