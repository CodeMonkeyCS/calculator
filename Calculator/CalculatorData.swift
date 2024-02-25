//
//  CalculatorData.swift
//  Calculator
//
//  Created by Cameron Small on 2/25/24.
//

import Foundation

enum Operator: Int {
    case plus = 0
    case minus
    case multiply
    case divide
    case percent
    case swapSign
    case decimal
    case equals
    case none
}

enum DisplayState {
    case valueA
    case valueB
    case calculatedValue
}

class CalculatorData {
    
    var calculatedValue = Number()
    var valueA = Number()
    var valueB = Number()
    var currentOperator = Operator.none
    var display = DisplayState.valueA
    var operatorClosure: (Number, Number) -> Number
    let operators: [(Number, Number) -> Number] = [
        add,
        subtract,
        multiply,
        divide,
    ]
    
    init(currentOperator: Operator = .none, display: DisplayState = .valueA, operatorClosure: @escaping (Number, Number) -> Number = noOperation) {
        self.currentOperator = currentOperator
        self.display = display
        self.operatorClosure = operatorClosure
    }
    
    func onClearClicked() {
        self.calculatedValue.reset()
        self.valueA.reset()
        self.valueB.reset()
        self.currentOperator = .none
        self.operatorClosure = noOperation
        self.display = .valueA
    }
    
    func onOperatorClicked(_ operate: Operator) {
        
        if operate == .plus || operate == .minus || operate == .multiply || operate == .divide {
            self.currentOperator = operate
            self.display = .valueB
            self.operatorClosure = operators[operate.rawValue]
        }
        else if operate == .swapSign {
            if display == .valueA {
                self.valueA.toggleSign()
            }
            else if display == .valueB {
                self.valueB.toggleSign()
            }
            else {
                self.calculatedValue.toggleSign()
            }
        }
        else if operate == .percent {
            if display == .valueA {
                self.valueA.toPercent()
            }
            else if display == .valueB {
                self.valueB.toPercent()
            }
            else {
                self.calculatedValue.toPercent()
            }
        }
        else if operate == .decimal {
            if display == .valueA {
                self.valueA.makeDouble()
            }
            else if display == .valueB {
                self.valueB.makeDouble()
            }
        }
        else if operate == .equals {
            self.calculateFinalValue()
        }
    }
    
    func onNumberClicked(_ number: Int) {
        
        if display == .valueA {
            self.valueA.addNumber(number)
        }
        else if display == .valueB {
            self.valueB.addNumber(number)
        }
    }
    
    func getDisplayValue() -> String {
        
        var displayValue: String
        if display == .valueA {
            displayValue = valueA.toString()
        }
        else if display == .valueB {
            displayValue = valueB.toString()
        }
        else {
            displayValue = calculatedValue.toString()
        }
        return displayValue
    }
    
    func calculateFinalValue() {
        
        display = .calculatedValue
        if self.currentOperator == .plus || self.currentOperator == .minus || self.currentOperator == .multiply || self.currentOperator == .divide {
            self.calculatedValue = self.operatorClosure(self.valueA, self.valueB)
            self.valueA.copy(number: self.calculatedValue)
            self.valueB.reset()
        }
    }
}
