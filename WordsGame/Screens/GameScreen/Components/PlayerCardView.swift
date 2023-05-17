//
//  PlayerCardView.swift
//  WordsGame
//
//  Created by ibaikaa on 17/5/23.
//

import SwiftUI

struct PlayerCardView: View {
    var body: some View {
        VStack {
            Text("0")
                .padding()
            
            Text("Вася")
                .padding()
        }
        .frame(width: 150, height: 150)
        .font(.custom("AvenirNext-Bold", size: 45))
        .foregroundColor(.white)
        .padding()
        .cornerRadius(20)
        .background(Color("FirstPlayer"))
    }
}

struct PlayerCardView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerCardView()
    }
}
