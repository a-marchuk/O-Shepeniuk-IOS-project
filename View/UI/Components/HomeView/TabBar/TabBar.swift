//
//  TabBar.swift
//  Test
//
//  Created by Student on 01.02.2024.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        HStack(spacing: 60) { // Reduced spacing between buttons
            Button(action: {
                            // Action for the first button
                            print("First Button Tapped")
                        }) {
                            ZStack {
                                Circle()
                                    .fill(
                                        AngularGradient(
                                            gradient: Gradient(stops: [
                                                Gradient.Stop(color: Color(red: 0.46, green: 0.88, blue: 0.04), location: 0.00),
                                                Gradient.Stop(color: Color(red: 0.04, green: 0.88, blue: 0.63), location: 1.00),
                                            ]),
                                            center: .center
                                        )
                                    )
                                    .frame(width: 48, height: 48)
                                
                                Image("home")
                                    
                            }
                        }
            
            
            Button(action: {
                // Action for the second button
                print("Second Button Tapped")
            }) {
                Image("heardbutton")
                    .foregroundColor(.white)
            }
            
            
            Button(action: {
                // Action for the third button
                print("Third Button Tapped")
            }) {
                Image("book")
                    .foregroundColor(.white)
            }
            
            
            Button(action: {
                // Action for the fourth button
                print("Fourth Button Tapped")
            }) {
                Image("chat")
                    .foregroundColor(.white)
            }
            
        }
        .frame(width: 393, height: 75)
        .background(Color(red: 0.15, green: 0.15, blue: 0.15))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
        .position(x: 196.5, y: 756)
    }
}
