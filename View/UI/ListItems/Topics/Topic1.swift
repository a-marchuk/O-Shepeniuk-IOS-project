//
//  Topic1.swift
//  Test
//
//  Created by Student on 31.01.2024.
//

import SwiftUI

struct Topic1: View {
    let rectangleColor: Color
    let iconName: String
    
    init(rectangleColor: Color, iconName: String) {
        self.rectangleColor = rectangleColor
        self.iconName = iconName
    }
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 82, height: 90)
                .foregroundColor(rectangleColor)
                .cornerRadius(3)
                .overlay(
                    ZStack {
                        Circle()
                            .fill(Color.white.opacity(0.08))
                            .frame(width: 80, height: 80)
                            .blur(radius: 1)
                            .position(x: 82, y: 45)
                        
                        Circle()
                            .fill(Color.white.opacity(0.08))
                            .frame(width: 80, height: 80)
                            .blur(radius: 1)
                            .position(x: 41, y: 90)
                        
                        Image(iconName) // Use the provided icon name
                            
                            
                    }
                )
        }
    }
}

struct Topic1_Previews: PreviewProvider {
    static var previews: some View {
        Topic1(rectangleColor: .blue, iconName: "eye")
    }
}
