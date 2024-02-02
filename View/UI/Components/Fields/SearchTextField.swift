//
//  SearchTextField.swift
//  Test
//
//  Created by Student on 31.01.2024.
//

import Foundation
import SwiftUI

struct SearchTexField: View {
    @Binding var text: String
    var placeholder: String
    var body: some View {
        HStack{
            Image("Search").padding(.leading,20)
            ZStack(alignment: .leading) {
                if text.isEmpty {
                    Text(placeholder)
                        .foregroundColor(Color(red: 0.4, green: 0.45, blue: 0.58))
                        .padding(.leading, 12)
                }
                
                TextField(placeholder, text: $text)
                    .font(Font.custom("Rubik", size: 15))
                    .padding(.leading,12)
                    .frame(height: 54.0)
                    .foregroundColor((Color(red: 0.4, green: 0.45, blue: 0.58)))
                    .background(Color.white)
            }
            Image("X").padding(.trailing,20)
        }
        .background(Color.white)
        .cornerRadius(12)
        .overlay(
            Rectangle()
                .foregroundColor(.clear)
                .frame(height: 54)
                .background(.clear)
                .cornerRadius(6)
                .shadow(color: .black.opacity(0.08), radius: 10, x: 0, y: 0)
                .padding(.top,2)
            )
    }
}
