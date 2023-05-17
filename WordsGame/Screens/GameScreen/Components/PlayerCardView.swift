//
//  PlayerCardView.swift
//  WordsGame
//
//  Created by ibaikaa on 17/5/23.
//

import SwiftUI

struct Player {
    let number: PlayerNumber
    let name: String
}

enum PlayerNumber {
    case first, second
}

struct PlayerCardView: View {
    @State var player: Player
    
    var body: some View {
        VStack {
            Text("0")
                .font(.custom("AvenirNext-Bold", size: 60))
            
            Text(player.name)
                .font(.custom("AvenirNext-Bold", size: 45))
        }
        .padding()
        .frame(width: screen.width / 2.3, height: screen.width / 2.3 )
        .foregroundColor(.white)
        .background(Color(player.number == .first ? .green : .blue ) )
        .cornerRadius(26)

    }
}

struct PlayerCardView_Previews: PreviewProvider {
    static var previews: some View {
        let player = Player(number: .second, name: "Ян")
        return PlayerCardView(player: player)
    }
}
