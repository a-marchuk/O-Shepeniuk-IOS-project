//
//  ScrollPopularDoctor.swift
//  Test
//
//  Created by Student on 01.02.2024.
//

import SwiftUI

struct ScrollPopularDoctor: View {
    
    let icons = ["PopularDoctor1","PopularDoctor2"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 8){
                ForEach(icons.indices, id: \.self) { index in
                    Button(action: {
                        print("Button tapped for index \(index)")
                    }) {
                        
                        PopularDortor(iconName: icons[index])
                        
                        
                    }
                    .padding(.horizontal,3)
                }
            }
        }
    }
}
