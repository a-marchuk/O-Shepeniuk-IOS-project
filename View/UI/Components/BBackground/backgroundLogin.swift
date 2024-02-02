//
//  backgroundLogin.swift
//  Test
//
//  Created by Student on 26.01.2024.
//

import SwiftUI

struct backgroundLogin: View {
    var body: some View {
        ZStack {
            
            Color.black.edgesIgnoringSafeArea(.all)
            
            
            Circle()
                .fill(Color(red: 0.38, green: 0.81, blue: 1).opacity(0.72))
                .frame(width: 216, height: 216)
                .blur(radius: 134.5)
                .position(x: 50, y: 35)
            
            Circle()
                .fill(Color(red: 0.05, green: 0.85, blue: 0.49).opacity(0.3))
                .frame(width: 300, height: 300)
                .blur(radius: 134.5)
                .position(x: UIScreen.main.bounds.width - 50, y: UIScreen.main.bounds.height - 100)
        }
    }
}

struct backgroundLogin_Previews: PreviewProvider {
    static var previews: some View {
        backgroundLogin()
    }
}
