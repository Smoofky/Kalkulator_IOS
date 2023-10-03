//
//  ContentView.swift
//  Kalkulator_IOS
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var tekst : String = ""
    @State var val1 : Int = 0
    @State var val2 : Int = 0
    @State var firstVal : Bool = true
    var body: some View {
        Text("Kalkulator") .foregroundColor(.red) .font(.largeTitle)
        HStack{
            ForEach(0..<3, id: \.self) {
                index in
                ButtonView(name:String(index), text:$tekst, val1: $val1, val2:$val2,firstVal: $firstVal)
            }
        }
    }
}
#Preview {
    ContentView()
}
