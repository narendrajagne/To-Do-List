//
//  Calculator.swift
//  To-Do-List
//
//  Created by Mobile2 on 12/03/25.
//

import Foundation

class Calculator {
    
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    func divide(_ a: Int, _ b: Int) -> Int? {
        return b == 0 ? nil : a / b
    }
    
}
