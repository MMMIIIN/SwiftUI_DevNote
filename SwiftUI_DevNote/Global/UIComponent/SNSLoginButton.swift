//
//  SNSLoginButton.swift
//  SwiftUI_DevNote
//
//  Created by Mingwan Choi on 2022/08/07.
//

import SwiftUI

struct SNSLoginButton: View {
    let text: String
    let image: Image

    let width = UIScreen.main.bounds.width

    init(text: String, image: Image) {
        self.text = text
        self.image = image
    }

    var body: some View {
        Button {
            print("touched \(text)")
        } label: {
            HStack(alignment: .center, spacing: -32) {
                image
                    .resizable()
                    .frame(width: 22, height: 22)
                    .padding(.init(top: 8, leading: 15, bottom: 8, trailing: 0))
                Spacer()
                Text(text).spotifyGothamBold(size: 16, color: .white)
                Spacer(minLength: 16)
            }
                .snsLoginStyle(width - 64)
        }
    }
}
