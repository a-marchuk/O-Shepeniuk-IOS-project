//
//  SubTitle.swift
//  Test
//
//  Created by Student on 26.01.2024.
//

import SwiftUI

struct SubTitle: View {
    var size: CGFloat
    var title: String
    
    var body: some View{
        Text(title)
            .font(Font.custom("Rubik", size: size))
            .multilineTextAlignment(.center)
            .foregroundColor(.white.opacity(0.65))
    
    }
}


