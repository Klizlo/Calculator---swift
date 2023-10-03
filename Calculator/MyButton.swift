//
//  MyButton.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct MyButton: View {
    @State var text: String = ""
    @Binding var result: String
    var body: some View {
        Button(text){
            
        }
        .frame(width: 100, height: 60)
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        MyButton(text: "", result: .constant(""))
    }
}
