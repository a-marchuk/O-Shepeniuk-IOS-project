//
//  TextButton.swift
//  Test
//
//  Created by Student on 25.01.2024.
//

import SwiftUI

struct TextButton: View {
    var title: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(Font.custom("Rubik", size: 14))
                .foregroundColor(Color(red: 0.46, green: 0.88, blue: 0.04))
        }
    }
}
