//
//  Font+Extension.swift
//  Test
//
//  Created by Student on 25.01.2024.
//

import SwiftUI

extension Font {
    enum Rubik: String {
        case regular = ""
    }
    
    static func rubik(size: CGFloat) -> Font {
        return .custom("Rubik", size: size)
    }
}
