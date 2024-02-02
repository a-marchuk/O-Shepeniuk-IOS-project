//
//  ScrollLiveDoctors.swift
//  Test
//
//  Created by Student on 31.01.2024.
//

import SwiftUI

struct ScrollLiveDoctorsView: View {
    var image: String
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 116.48, height: 168)
                .foregroundColor(.clear)
                .cornerRadius(10)
                .overlay(
                    Image("Play")
                )
                .background(Color(red: 0, green: 0, blue: 0).opacity(0.1))
                .background(Image(image))
                .overlay(
                    // Додатковий прямокутник всередині
                    Rectangle()
                        .frame(width: 40.32, height: 17.92) // Змініть розміри відповідно до вашого бажання
                        .foregroundColor(.clear)
                        .background(Color(red: 0.98, green: 0, blue: 0.19))
                        .cornerRadius(3)
                        .overlay(
                                HStack{
                                Circle()  // Додаємо коло
                                    .frame(width: 5, height: 5)  // Змініть розміри кола за вашим бажанням
                                    .foregroundColor(.white)
                                    .padding(.leading,4)
                                Text("LIVE")
                                    .font(
                                        Font.custom("Rubik", size: 7)
                                            .weight(.black)
                                    )
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(.white)
                                    .padding(.trailing,8)
                                
                                    
                            }
                        )
                    
                        .offset(x: 30, y: -60)  // Змініть зміщення відповідно до вашого бажання
                )
        }
    }
}


