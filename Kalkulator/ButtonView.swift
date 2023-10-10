//
//  ButtonView.swift
//  Kalkulator
//
//  Created by student on 10/10/2023.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.largeTitle)
                .frame(width: 100, height: 60)
                .background(Color.white)
                .bold()
                .overlay(
                    Rectangle()
                        .stroke(Color.black, lineWidth: 2)
                )
        }
    }
}


    
#Preview {
    ButtonView(title: "Test", action: {})
}
