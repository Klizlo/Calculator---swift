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
    @Binding var temp: String
    @Binding var op: String
    
    var body: some View {
        Button(text){
            buttonOperate()
        }
        .frame(width: 100, height: 60)
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
        .font(.largeTitle)
    }
    
    func buttonOperate() {
        switch text{
        case let x where x == "+" || x == "-" || x == "*" || x == "/":
            if(op.isEmpty){
                temp = result
                result = ""
                op = text
            }
        case "sin":
            result = String(Calculations().sin(v1: Int(Double(result)!)))
        default:
            result += text
        }
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        MyButton(text: "", result: .constant(""), temp: .constant("")
                 , op: .constant(""))
    }
}
