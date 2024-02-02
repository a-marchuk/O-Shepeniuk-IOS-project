//
//  LinkButton.swift
//  Test
//
//  Created by Student on 25.01.2024.
//

import SwiftUI
struct SocialLoginButton: View {
    var title: String
    var image: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack {
                Image(image)
                Text(title)
                    .font(.rubik(size: 16).weight(.light))
                    .foregroundColor(.white.opacity(0.65))
                    
            }
            .multilineTextAlignment(.center)
            .frame(width: 160.0, height: 54.0)
        }
        .background(Color.clear)
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color(red: 0.86, green: 1, blue: 0.72), lineWidth: 2)
        )
    }
}
