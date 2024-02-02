//
//  PopularDoctor.swift
//  Test
//
//  Created by Student on 01.02.2024.
//


import SwiftUI



struct PopularDortor: View {
    let iconName: String
    
    init(iconName: String) {
        self.iconName = iconName
    }
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 190, height: 180)
                .foregroundColor(.clear)
                .cornerRadius(12)
            Image(iconName)
        
        }
    }
}




struct PopularDoctor_Previews: PreviewProvider {
    static var previews: some View {
        PopularDortor(iconName: "PopularDortor1")
    }
}
