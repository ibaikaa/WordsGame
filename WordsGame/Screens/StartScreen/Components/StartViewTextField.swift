//
//  StartViewTextField.swift
//  WordsGame
//
//  Created by ibaikaa on 17/5/23.
//

import SwiftUI

struct StartViewTextField: View {
    @State var longWord: Binding<String>
    var placeholder: String
     
    var body: some View {
        TextField(placeholder, text: longWord)
            .font(.title2)
            .padding()
            .background(.white)
            .cornerRadius(16)
    }
    
}
