//
//  GameView.swift
//  WordsGame
//
//  Created by ibaikaa on 17/5/23.
//

import SwiftUI

struct GameView: View {
    @State private var word: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    print("Exit button tapped")
                } label: {
                    Text("Выход")
                        .padding(6)
                        .padding(.horizontal)
                        .font(.custom("AvenirNext-Bold", size: 30))
                        .foregroundColor(.white)
                        .background(.yellow)
                        .cornerRadius(100)
                        .padding(6)
                }
                Spacer()
            }
            .padding(.horizontal, 16)
            
            Text("Магнитотерапия")
                .font(.custom("AvenirNext-Bold", size: 42))
                .foregroundColor(.white)
                .padding()
                .shadow(color: .black, radius: 5)
            HStack(spacing: 20) {
                PlayerCardView(player: Player(number: .first, name: "Ian"))
                PlayerCardView(player: Player(number: .second, name: "Baika"))
            }
            .padding(.bottom, 20)
            
            WordTextField(longWord: $word, placeholder: "Введите слово...")
                .padding(.horizontal, 16)
                .padding(.bottom, 30)
            
            Button {
                print("Ready button tapped")
            } label: {
                Text("Готово")
                    .padding(12)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .background(.yellow)
                    .cornerRadius(12)
                    .font(.custom("AvenirNext-Bold", size: 30))
                    .padding(.horizontal)
            }
            
            Spacer()
        }
        .background(Image("background"))
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
