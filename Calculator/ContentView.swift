//
//  ContentView.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var result: String = ""
    @State var temp: String = ""
    @State var operation: String = ""
    var body: some View {
        VStack {
            Spacer()
            Text("Kalkulator")
                .font(.largeTitle)
            Spacer()
            TextField("", text: $result)
                .font(.largeTitle)
                .frame(width: 315, height: 60)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
            HStack{
                MyButton(text: "1", result: $result, temp: $temp, op: $operation)
                MyButton(text: "2", result: $result, temp: $temp, op: $operation)
                MyButton(text: "3", result: $result, temp: $temp, op: $operation)
            }
            HStack{
                MyButton(text: "4", result: $result, temp: $temp, op: $operation)
                MyButton(text: "5", result: $result, temp: $temp, op: $operation)
                MyButton(text: "6", result: $result, temp: $temp, op: $operation)
            }
            HStack{
                MyButton(text: "7", result: $result, temp: $temp, op: $operation)
                MyButton(text: "8", result: $result, temp: $temp, op: $operation)
                MyButton(text: "9", result: $result, temp: $temp, op: $operation)
            }
            HStack{
                MyButton(text: "0", result: $result, temp: $temp, op: $operation)
                MyButton(text: "+", result: $result, temp: $temp, op: $operation)
                MyButton(text: "-", result: $result, temp: $temp, op: $operation)
            }
            HStack{
                MyButton(text: "*", result: $result, temp: $temp, op: $operation)
                MyButton(text: "/", result: $result, temp: $temp, op: $operation)
                MyButton(text: "sin", result: $result, temp: $temp, op: $operation)
            }
            Button("OBLICZ"){
                calculate()
            }
                .frame(width: 315, height: 60)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                .font(.largeTitle)
        }
        .padding()
    }
    
    func calculate(){
        if(!operation.isEmpty && !result.isEmpty){
            switch operation{
            case "+":
                result = String(Calculations().add(v1: Int(Double(temp)!), v2: Int(Double(result)!)))
            case "-":
                result = String(Calculations().sub(v1: Int(Double(temp)!), v2: Int(Double(result)!)))
            case "*":
                result = String(Calculations().multi(v1: Int(Double(temp)!), v2: Int(Double(result)!)))
            default :
                if let r = Calculations().div(v1: Int(Double(temp)!), v2: Int(Double(result)!)){
                    result = String(r)
                }
            }
            
            operation = ""
        }
    }
}

#Preview {
    ContentView()
}
