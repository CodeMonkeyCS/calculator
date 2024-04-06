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
    
    let kLargeFontSize = 72
    let kMeduimFontSize = 64
    let kSmallFontSize = 56
    
    /// where the final value is stored
    var calculatedValue = Number()
    
    /// left hand value for math operations
    var valueA = Number()
    
    /// right hand value for math operations
    var valueB = Number()
    
    /// current operator to use for math operation
    var currentOperator = Operator.none
    
    /// what value is currently being displayed
    var display = DisplayState.valueA
    
    /// current font size for the number display
    var numberFontSize = 72
    
    /// closure to run on when equals is clicked
    var operatorClosure: (Number, Number) -> Number
    
    /// array of available math operators
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
    
    ///
    /// \brief reset the calculator
    func onClearClicked() {
        self.calculatedValue.reset()
        self.valueA.reset()
        self.valueB.reset()
        self.currentOperator = .none
        self.operatorClosure = noOperation
        self.display = .valueA
    }
    
    ///
    /// \brief called when an operator is clicked on like +, -, /, *
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
    
    ///
    /// \brief called when any of the numbers 0 - 9 are clicked
    func onNumberClicked(_ number: Int) {
        
        if display == .valueA {
            self.valueA.addNumber(number)
        }
        else if display == .valueB {
            self.valueB.addNumber(number)
        }
    }
    
    ///
    /// \brief used to calculate the current display number
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
        
        // update font size based on display length
        if displayValue.count < 6 {
            self.numberFontSize = kLargeFontSize
        }
        else if 6...10 ~= displayValue.count {
            self.numberFontSize = kMeduimFontSize
        }
        else {
            self.numberFontSize = kSmallFontSize
        }
        
        return displayValue
    }
    
    ///
    /// \brief calculate the final result, this is called by the equals operator
    func calculateFinalValue() {
        
        display = .calculatedValue
        if self.currentOperator == .plus || self.currentOperator == .minus || self.currentOperator == .multiply || self.currentOperator == .divide {
            self.calculatedValue = self.operatorClosure(self.valueA, self.valueB)
            self.valueA.copy(number: self.calculatedValue)
            self.valueB.reset()
        }
    }
    
    func getDisplayFontSize() -> CGFloat {
        CGFloat(self.numberFontSize)
    }
}
