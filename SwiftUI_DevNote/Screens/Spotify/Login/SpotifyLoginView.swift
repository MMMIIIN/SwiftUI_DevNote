//
//  SpotifyLoginView.swift
//  SwiftUI_DevNote
//
//  Created by Mingwan Choi on 2022/08/06.
//

import SwiftUI

struct SpotifyLoginView: View {
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height

    var body: some View {
        GeometryReader { geo in
            ZStack {
                backgroundSpotifyImage()
                    .frame(width: width, height: height, alignment: .top)
                VStack(alignment: .center, spacing: 10) {
                    spotifyIconImage()
                    Text("Discover your next\nfavorite playlist.")
                        .spotifyGothamBlack(size: 28, color: .white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 34)
                    signUpButton()
                    SNSLoginButton(text: "Continue with Google", image: Image("google"))
                    SNSLoginButton(text: "Continue with Facebook", image: Image("facebook"))
                    SNSLoginButton(text: "Continue with Apple", image: Image("apple"))
                    loginButton()
                }
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .bottom)
                    .padding(.bottom, 60)
            }
        }
            .preferredColorScheme(.dark)
    }

    private func backgroundSpotifyImage() -> some View {
        Image("spotify_login_image")
            .resizable()
            .scaledToFit()
    }

    private func spotifyIconImage() -> some View {
        Image("spotify")
            .resizable()
            .frame(width: 44, height: 44)
            .padding(.bottom, 18)
    }

    private func signUpButton() -> some View {
        Button {
            print("touched Sign up Button")
        } label: {
            Text("Sign up")
                .spotifyGothamBold(size: 16, color: .black)
                .frame(width: width - 64, height: 48, alignment: .center)
                .background(Color.spotifyGreen)
                .cornerRadius(24)
        }
    }

    private func loginButton() -> some View {
        Button {
            print("touched Login Button")
        } label: {
            Text("Log in")
                .spotifyGothamBold(size: 16, color: .white)
                .frame(height: 48, alignment: .center)
                .padding(.bottom, 14)
        }
    }
}

struct SpotifyLoginView_Previews: PreviewProvider {
    static var previews: some View {
        SpotifyLoginView()
    }
}
