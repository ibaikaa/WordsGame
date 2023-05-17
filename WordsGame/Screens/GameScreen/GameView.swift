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
                        .padding(10)
                        .font(.custom("AvenirNext-Bold", size: 30))
                        .foregroundColor(.white)
                        .background(.yellow)
                        .cornerRadius(100)
                }
                
                Spacer()
                Spacer()
            }
            .padding(.horizontal, 16)
            
            Text("Магнитотерапия")
                .font(.custom("AvenirNext-Bold", size: 42))
                .foregroundColor(.white)
                .padding()
            
            
            HStack {
                PlayerCardView()
                PlayerCardView()
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 20)
            
            StartViewTextField(longWord: $word, placeholder: "Введите слово...")
                .padding(.horizontal, 16)
                .padding(.bottom, 30)
            
            Button {
                print("Ready button tapped")
            } label: {
                Text("Готово")
                    .padding()
                    .padding(.horizontal, 60)
                    .background(.yellow)
                    .foregroundColor(.white)
                    .font(.custom("AvenirNext-Bold", size: 35))
                    .cornerRadius(100)
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
