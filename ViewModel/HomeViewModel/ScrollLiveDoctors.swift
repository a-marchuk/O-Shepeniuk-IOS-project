//
//  ScrollLiveDoctors.swift
//  Test
//
//  Created by Student on 31.01.2024.
//

import SwiftUI

struct ScrollLiveDoctors: View {
    let doctors = ["doc1", "doc2", "doc1", "doc2", "doc1", "doc6"]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(doctors.indices, id: \.self) { index in
                    Button(action: {
                        print("Button tapped for index \(index)")
                    }) {
                        ZStack {
                            

                            // Ваша власна в'юшка для взаємодії
                            ScrollLiveDoctorsView(image: doctors[index])
                            // Додайте свої елементи тут
                        }
                    }
                    .padding(.horizontal, 3) // Простір між прямокутниками
                     // Додаємо це для стилізації кнопки
                }
            }
            .padding(.top)
        }
    }
}

struct ScrollLiveDoctors_Previews: PreviewProvider {
    static var previews: some View {
        ScrollLiveDoctors()
    }
}
