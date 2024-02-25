//
//  CalculatorData.swift
//  Calculator
//
//  Created by Cameron Small on 2/25/24.
//

import Foundation

enum Operator {
    case plus
    case minus
    case multiply
    case divide
    case percent
    case swapSign
    case decimal
    case equals
    case none
}

class CalculatorData {
    
    var calculatedValue = 0.0
    var valueA = 0.0
    var valueB = 0.0
    var currentOperator = Operator.none
    
    func onClearClicked() {
        self.calculatedValue = 0.0
        self.valueA = 0.0
        self.valueB = 0.0
        self.currentOperator = .none
    }
    
    func onOperatorClicked(_ op: Operator) {
        print("\(op)")
    }
    
    func onNumberClicked(_ number: Int) {
        print("on Number \(number) Clicked")
    }
}
