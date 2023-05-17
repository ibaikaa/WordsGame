//
//  StartView.swift
//  WordsGame
//
//  Created by ibaikaa on 17/5/23.
//

import SwiftUI

struct StartView: View {
    @State private var title = "Words Game"
    @State private var longWord = ""
    @State private var playerOne = ""
    @State private var playerTwo = ""
    
    @State private var isShowed = false
    
    var body: some View {
        VStack {
            TitleText(title: title)
            
            VStack(spacing: 20) {
                StartViewTextField(longWord: $longWord, placeholder: "Введите длинное слово")
                    .padding(.horizontal, 20)
                
                StartViewTextField(longWord: $playerOne, placeholder: "Первый игрок")                    .padding(.horizontal, 20)
                
                StartViewTextField(longWord: $playerTwo, placeholder: "Второй игрок")
                    .padding(.horizontal, 20)
            }
            .padding(.top, 32)
            
            Button {
                isShowed.toggle()
            } label: {
                Text("Старт! 🔥")
                    .font(.custom("AvenirNext-Bold", size: 30))
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 64)
                    .background(.yellow)
                    .cornerRadius(100)
            }
            .padding(.top, 50)
        }
        .background(Image("background"))
        .fullScreenCover(isPresented: $isShowed) {
            GameView()
        }
        
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
