//
//  SwiftUIView.swift
//  Test
//
//  Created by Student on 01.02.2024.
//

import SwiftUI

struct PopularDortor: View {
    var body: some View {
        Rectangle()
            .frame(width: 82, height: 90)
            .foregroundColor(.yellow)
            .cornerRadius(3)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        PopularDortor()
    }
}
