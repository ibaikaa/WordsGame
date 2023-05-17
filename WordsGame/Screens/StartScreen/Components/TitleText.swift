//
//  TitleText.swift
//  WordsGame
//
//  Created by ibaikaa on 17/5/23.
//

import SwiftUI

struct TitleText: View {
    @State var title: String
    
    var body: some View {
        Text(title)
            .padding()
            .font(.custom("AvenirNext-Bold", size: 42))
            .foregroundColor(.white)
            .cornerRadius(16)
    }
}
