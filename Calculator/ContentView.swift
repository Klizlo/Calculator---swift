//
//  ContentView.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var result: String = ""
    var body: some View {
        VStack {
            Spacer()
            Text("Kalkulator")
                .font(.largeTitle)
            Spacer()
            TextField("", text: $result)
                .frame(width: 315, height: 60)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
            HStack{
                MyButton(text: "1", result: $result)
                MyButton(text: "2", result: $result)
                MyButton(text: "3", result: $result)
            }
            HStack{
                MyButton(text: "4", result: $result)
                MyButton(text: "5", result: $result)
                MyButton(text: "6", result: $result)
            }
            HStack{
                MyButton(text: "7", result: $result)
                MyButton(text: "8", result: $result)
                MyButton(text: "9", result: $result)
            }
            HStack{
                MyButton(text: "0", result: $result)
                MyButton(text: "+", result: $result)
                MyButton(text: "-", result: $result)
            }
            HStack{
                MyButton(text: "*", result: $result)
                MyButton(text: "/", result: $result)
                MyButton(text: "sin", result: $result)
            }
            Button("OBLICZ"){
                
            }
                .frame(width: 315, height: 60)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                .font(.largeTitle)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
