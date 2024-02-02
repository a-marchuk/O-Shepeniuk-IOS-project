//
//  HomeTitle.swift
//  Test
//
//  Created by Student on 02.02.2024.
//

import SwiftUI

struct HomeTitle: View {
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 394.0, height: 185)
                .background(
                    LinearGradient(
                        stops: [
                            Gradient.Stop(color: Color(red: 0.46, green: 0.88, blue: 0.04), location: 0.00),
                            Gradient.Stop(color: Color(red: 0.04, green: 0.88, blue: 0.63), location: 1.00),
                        ],
                        startPoint: UnitPoint(x: 0, y: 0.05),
                        endPoint: UnitPoint(x: 0.93, y: 1.1)
                    )
                )
                .cornerRadius(20)
                .position(x: UIScreen.main.bounds.width - 197, y: UIScreen.main.bounds.height - 844)
            
            VStack(){
                HStack{
                    VStack{
                        Text(StringConstants.Home.hiHandwerker)
                            .font(
                                Font.custom("Rubik", size: 20)
                                    .weight(.light)
                            )
                            .foregroundColor(.black)
                        
                        
                        
                        Text(StringConstants.Home.findYourDoctor)
                            .font(
                                Font.custom("Rubik", size: 25)
                                    .weight(.bold)
                            )
                            .foregroundColor(.black).padding(.leading,20)
                    }
                    Spacer()
                    Circle()
                        .frame(width: 60, height: 60)
                        .overlay(
                            Image("face")
                                .resizable()
                                .scaledToFit()
                        ).padding(.trailing,20)
                }
                Spacer()
            }
        }
    }
    
    struct HomeTitle_Previews: PreviewProvider {
        static var previews: some View {
            HomeTitle()
        }
    }
}
