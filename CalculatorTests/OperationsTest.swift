//
//  OperationsTest.swift
//  CalculatorTests
//
//  Created by student on 10/10/2023.
//

import XCTest
@testable import Calculator

final class OperationsTest: XCTestCase {
    
    let calculations = Calculations()
    
    func testPositiveScenarioForAddCalculation(){
        let v1 = 10
        let v2 = 20
        
        let result = calculations.add(v1: v1, v2: v2)
        
        XCTAssertEqual(result, 30)
    }
    
    func testNegativeScenarioForAddCalculation(){
        let v1 = 10
        let v2 = 20
        
        let result = calculations.add(v1: v1, v2: v2)
        
        XCTAssertNotEqual(result, 20)
    }
    
    func testPositiveScenarioForSubCalculation(){
        let v1 = 10
        let v2 = 20
        
        let result = calculations.sub(v1: v1, v2: v2)
        
        XCTAssertEqual(result, -10)
    }
    
    func testNegativeScenarioForSubCalculation(){
        let v1 = 10
        let v2 = 20
        
        let result = calculations.sub(v1: v1, v2: v2)
        
        XCTAssertNotEqual(result, 10)
    }
    
    func testPositiveScenarioForProdCalculation(){
        let v1 = 10
        let v2 = 20
        
        let result = calculations.multi(v1: v1, v2: v2)
        
        XCTAssertEqual(result, 200)
    }
    
    func testNegativeScenarioForProdCalculation(){
        let v1 = 10
        let v2 = 20
        
        let result = calculations.multi(v1: v1, v2: v2)
        
        XCTAssertNotEqual(result, 20)
    }
    
    func testPositiveScenarioForDivCalculation(){
        let v1 = 20
        let v2 = 10
        
        let result = calculations.div(v1: v1, v2: v2)
        
        XCTAssertEqual(result, 2)
    }
    
    func testZeroScenarioForDivCalculation(){
        let v1 = 20
        let v2 = 0
        
        let result = calculations.div(v1: v1, v2: v2)
        
        XCTAssertNil(result)
    }
    
    func testPositiveScenarioForSinCalculation(){
        let v1 = 90
        
        let result = calculations.sin(v1: v1)
        
        XCTAssertEqual(result.rounded(), 1)
    }

}
