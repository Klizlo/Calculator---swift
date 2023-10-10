//
//  Calculations.swift
//  Calculator
//
//  Created by student on 03/10/2023.
//

import Foundation

struct Calculations {
    
    func add(v1: Int, v2: Int) -> Double {
        return Double(v1) + Double(v2)
    }
    
    func sub(v1: Int, v2: Int) -> Double {
        return Double(v1) - Double(v2)
    }
    
    func multi(v1: Int, v2: Int) -> Double {
        return Double(v1) * Double(v2)
    }
    
    func div(v1: Int, v2: Int) -> Double? {
        if v2 == 0 {
            return nil
        }
        return Double(v1) / Double(v2)
    }
    
    func sin(v1: Int) -> Double {
        return Foundation.sin(Double(v1) * (3.14 / 180))
    }
    
}
