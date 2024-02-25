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

///
/// \brief operator functions
func noOperation(valueA: Double, valueB: Double) -> Double { 0.0 }
func add(valueA: Double, valueB: Double) -> Double { valueA + valueB }
func subtract(valueA: Double, valueB: Double) -> Double { valueA - valueB }
func multiply(valueA: Double, valueB: Double) -> Double { valueA * valueB }
func divide(valueA: Double, valueB: Double) -> Double { valueA / valueB }

class CalculatorData {
    
    var hasDecimal = false
    var calculatedValue = 0.0
    var valueA = 0.0
    var valueB = 0.0
    var currentOperator = Operator.none
    var display = DisplayState.valueA
    var operatorClosure: (Double, Double) -> Double
    let operators: [(Double, Double) -> Double] = [
        add,
        subtract,
        multiply,
        divide,
    ]
    
    init(calculatedValue: Double = 0.0, valueA: Double = 0.0, valueB: Double = 0.0, currentOperator: Operator = Operator.none, display: DisplayState = DisplayState.valueA, operatorClosure: @escaping (Double, Double) -> Double = noOperation) {
        self.calculatedValue = calculatedValue
        self.valueA = valueA
        self.valueB = valueB
        self.currentOperator = currentOperator
        self.display = display
        self.operatorClosure = operatorClosure
    }
    
    func onClearClicked() {
        self.calculatedValue = 0.0
        self.valueA = 0.0
        self.valueB = 0.0
        self.currentOperator = .none
        self.operatorClosure = noOperation
    }
    
    func onOperatorClicked(_ operate: Operator) {
        
        if operate == .plus || operate == .minus || operate == .multiply || operate == .divide {
            self.currentOperator = operate
            self.display = .valueB
            self.operatorClosure = operators[operate.rawValue]
        }
        else if operate == .swapSign {
            if display == .valueA {
                self.valueA *= -1.0
            }
            else if display == .valueB {
                self.valueB *= -1.0
            }
            else {
                self.calculatedValue *= -1.0
            }
        }
        else if operate == .percent {
            if display == .valueA {
                self.valueA *= 0.01
            }
            else if display == .valueB {
                self.valueB *= 0.01
            }
            else {
                self.calculatedValue *= 0.01
            }
        }
        else if operate == .equals {
            self.calculateFinalValue()
        }
    }
    
    func onNumberClicked(_ number: Int) {
        
        if display == .valueA {
            self.valueA *= 10.0
            self.valueA += Double(number)
            print("\(self.valueA)")
        }
        else if display == .valueB {
            self.valueB *= 10.0
            self.valueB += Double(number)
            print("\(self.valueB)")
        }
    }
    
    func getDisplayValue() -> String {
        
        var value = self.calculatedValue
        if display == .valueA {
            value = self.valueA
        }
        else if display == .valueB {
            value = self.valueB
        }
        return self.toDisplayString(value: value)
    }
    
    func toDisplayString(value: Double) -> String {
        
        let remainder = value.truncatingRemainder(dividingBy: 1)
        print(remainder)
        if remainder >= 0.0 {
            return "\(value)"
        }
        let wholeNumber = Int(value)
        return "\(wholeNumber)"
    }
    
    func calculateFinalValue() {
        
        display = .calculatedValue
        if self.currentOperator == .plus || self.currentOperator == .minus || self.currentOperator == .multiply || self.currentOperator == .divide {
            self.calculatedValue = self.operatorClosure(self.valueA, self.valueB)
            print("\(self.calculatedValue)")
        }
    }
}
