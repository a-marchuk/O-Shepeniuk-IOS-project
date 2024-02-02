//
//  ScrollTopics.swift
//  Test
//
//  Created by Student on 31.01.2024.
//

import SwiftUI

struct ScrollTopics: View {
    
    let colors: [Color] = [.blue, .green, .orange, .red, .yellow]
    let icons = ["tooth","heard","eye","fit","tooth"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 8){
                ForEach(colors.indices, id: \.self) { index in
                    Button(action: {
                        print("Button tapped for index \(index)")
                    }) {
                        
                        Topic1(rectangleColor: colors[index], iconName: icons[index])
                        
                        
                    }
                }
            }
        }
    }
}


