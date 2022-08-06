//
//  View+Extension.swift
//  SwiftUI_DevNote
//
//  Created by Mingwan Choi on 2022/08/06.
//

import SwiftUI

extension View {

    // MARK: - spotify

    func snsLoginStyle(_ width: CGFloat) -> some View {
        self.frame(width: width, height: 48, alignment: .center)
            .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(.gray, lineWidth: 1)
        )
    }
}
