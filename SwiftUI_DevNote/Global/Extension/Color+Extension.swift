//
//  Color+Extension.swift
//  SwiftUI_DevNote
//
//  Created by Mingwan Choi on 2022/08/06.
//

import SwiftUI

extension Color {
    
    // MARK: - spotify
    
    static var spotifyGreen: Color {
        return Color("00D361")
    }
}

extension Color {
    init(_ hex: String) {
        let scanner = Scanner(string: hex)
        let _ = scanner.scanString("#")

        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)

        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double((rgb >> 0) & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
