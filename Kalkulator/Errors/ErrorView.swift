//
//  ErrorView.swift
//  Kalkulator
//
//  Created by student on 10/10/2023.
//

import SwiftUI


struct ErrorView: View {
    @Binding var errorMessage: String

    var body: some View {
        VStack {
            Text(errorMessage)
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .bold()
        }
        .padding()
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(errorMessage: .constant("Error"))
    }
}
