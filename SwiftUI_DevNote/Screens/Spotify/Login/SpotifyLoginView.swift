//
//  SpotifyLoginView.swift
//  SwiftUI_DevNote
//
//  Created by Mingwan Choi on 2022/08/06.
//

import SwiftUI

struct SpotifyLoginView: View {
    private let width = UIScreen.main.bounds.width
    private let height = UIScreen.main.bounds.height
    
    private enum SNSLoginType: CaseIterable {
        case google
        case facebook
        case apple
        
        var image: Image {
            switch self {
            case .google:
                return Image("google")
            case .facebook:
                return Image("facebook")
            case .apple:
                return Image("apple")
            }
        }
        
        var text: String {
            switch self {
            case .google:
                return "Continue with Google"
            case .facebook:
                return "Continue with Facebook"
            case .apple:
                return "Continue with Apple"
            }
        }
    }

    var body: some View {
        ZStack {
            backgroundSpotifyImage()
                .frame(width: width, height: height, alignment: .top)
            VStack(alignment: .center, spacing: 10) {
                spotifyIconImage()
                titleText()
                signUpButton()
                snsLoginButton()
                loginButton()
            }
                .frame(width: width, height: height, alignment: .bottom)
                .padding(.bottom, 60)
        }
            .preferredColorScheme(.dark)
    }

    private func backgroundSpotifyImage() -> some View {
        Image("spotify_login_image")
            .resizable()
            .scaledToFit()
            .ignoresSafeArea()
    }

    private func spotifyIconImage() -> some View {
        Image("spotify")
            .resizable()
            .frame(width: 44, height: 44)
            .padding(.bottom, 18)
    }

    private func titleText() -> some View {
        Text("Discover your next\nfavorite playlist.")
            .spotifyGothamBlack(size: 28, color: .white)
            .multilineTextAlignment(.center)
            .padding(.bottom, 34)
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
    
    private func snsLoginButton() -> some View {
        ForEach(SNSLoginType.allCases, id: \.self) { type in
            SNSLoginButton(text: type.text, image: type.image)
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
