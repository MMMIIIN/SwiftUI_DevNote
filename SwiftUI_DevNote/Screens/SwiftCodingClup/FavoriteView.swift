//
//  FavoriteView.swift
//  SwiftUI_DevNote
//
//  Created by Mingwan Choi on 2022/08/30.
//

import SwiftUI

struct FavoriteView: View {
    @State var firstAnswer: Favorite?
    @State var secondAnswer: Int = -1
    
    enum Favorite {
        case love
        case friendship
        case game
        case exercise
        
        var image: Image {
            switch self {
            case .love:
                return Image(systemName: "heart")
            case .friendship:
                return Image(systemName: "person")
            case .game:
                return Image(systemName: "gamecontroller")
            case .exercise:
                return Image(systemName: "figure.walk")
            }
        }
        
        var text: Text {
            switch self {
            case .love:
                return Text("사랑")
            case .friendship:
                return Text("우정")
            case .game:
                return Text("게임")
            case .exercise:
                return Text("운동")
            }
        }
    }
    
    var body: some View {
        VStack {
            Text("Q1. 인생에서 가장 중요한 것은 무엇인가요?")
            VStack {
                if firstAnswer != nil {
                    HStack {
                        firstAnswer?.image
                        firstAnswer?.text
                    }
                }
                HStack {
                    HStack {
                        Button(action: {
                            firstAnswer = .love
                        }, label: {
                            Image(systemName: "heart")
                            Text("사랑")
                        })
                    }
                    HStack {
                        Button(action: {
                            firstAnswer = .friendship
                        }, label: {
                            Image(systemName: "person")
                            Text("우정")
                        })
                    }
                }
                HStack {
                    HStack {
                        Button(action: {
                            firstAnswer = .game
                        }, label: {
                            Image(systemName: "gamecontroller")
                            Text("게임")
                        })
                    }
                    HStack {
                        Button(action: {
                            firstAnswer = .exercise
                        }, label: {
                            Image(systemName: "figure.walk")
                            Text("운동")
                        })
                    }
                }
            }
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
