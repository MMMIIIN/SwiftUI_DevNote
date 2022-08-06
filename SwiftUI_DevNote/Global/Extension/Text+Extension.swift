//
//  Text+Extension.swift
//  SwiftUI_DevNote
//
//  Created by Mingwan Choi on 2022/08/07.
//

import SwiftUI

extension Text {
    
    // MARK: - spotify
    
    func spotifyGothamBold(size: CGFloat, color: Color) -> Text {
        self.font(.custom("Gotham-Bold", size: size))
            .foregroundColor(color)
    }
    
    func spotifyGothamBlack(size: CGFloat, color: Color) -> Text {
        self.font(.custom("Gotham-Black", size: size))
            .foregroundColor(color)
    }
}
