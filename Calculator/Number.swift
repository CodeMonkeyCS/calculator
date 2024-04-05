//
//  Number.swift
//  Calculator
//
//  Created by Cameron Small on 2/25/24.
//

import Foundation

class Number {
    
    var decimalPlace = -1
    var double = 0.0
    
    ///
    /// \brief  reset to default values
    func reset() {
        self.decimalPlace = -1
        self.double = 0.0
    }
    
    ///
    /// \brief  used when building a number before an operator is selected
    func addNumber(_ value: Int) {
        
        var number = Double(value)
        if isDouble() {
            for _ in 0...self.decimalPlace {
                number /= 10.0
            }
            self.decimalPlace += 1
        }
        else {
            self.double *= 10.0
        }
        self.double += number
        
    }
    
    ///
    /// \brief  toggle between positive and negative
    func toggleSign() {
        self.double *= -1.0
    }
    
    ///
    /// \brief  convert number to a double
    func makeDouble() {
        if !self.isDouble() {
            self.decimalPlace = 0
        }
    }
    
    ///
    /// \brief  convert number to percentage
    func toPercent() {
        self.makeDouble()
        self.double *= 0.01
    }
    
    ///
    /// \brief  copy the number
    func copy(number: Number) {
        self.decimalPlace = number.decimalPlace
        self.double = number.double
    }
    
    ///
    /// \brief  convert the number to a string based on type
    func toString() -> String {
        
        let zeroRemainder = self.double.truncatingRemainder(dividingBy: 1)
        if self.decimalPlace >= 1 && zeroRemainder == 0 {
            var string = self.double.rounded().formatted() + "."
            for _ in 1...self.decimalPlace {
                string += "0"
            }
            return string
        }
        
        return self.double.formatted()
    }
    
    func isDouble() -> Bool { decimalPlace >= 0 }
}

///
/// \brief operator functions
func noOperation(valueA: Number, valueB: Number) -> Number { Number() }

///
/// \brief add closure operator for numbers
func add(valueA: Number, valueB: Number) -> Number {
    let newNumber = Number()
    if valueA.isDouble() || valueB.isDouble() {
        valueA.makeDouble()
        valueB.makeDouble()
        newNumber.makeDouble()
    }
    newNumber.double = valueA.double + valueB.double
    
    return newNumber
}

///
/// \brief subtract closure operator for numbers
func subtract(valueA: Number, valueB: Number) -> Number {
    let newNumber = Number()
    if valueA.isDouble() || valueB.isDouble() {
        valueA.makeDouble()
        valueB.makeDouble()
        newNumber.makeDouble()
    }
    newNumber.double = valueA.double - valueB.double
    
    return newNumber
}

///
/// \brief multiply closure operator for numbers
func multiply(valueA: Number, valueB: Number) -> Number {
    let newNumber = Number()
    if valueA.isDouble() || valueB.isDouble() {
        valueA.makeDouble()
        valueB.makeDouble()
        newNumber.makeDouble()
    }
    newNumber.double = valueA.double * valueB.double
    
    return newNumber
}

///
/// \brief divide closure operator for numbers
func divide(valueA: Number, valueB: Number) -> Number {
    let newNumber = Number()
    let numerator = valueA.double
    let denominator = valueB.double
    let remainder = numerator.remainder(dividingBy: denominator)
    if remainder > 0 {
        valueA.makeDouble()
        valueB.makeDouble()
        newNumber.makeDouble()
    }
    
    if valueB.double != 0.0 {
        newNumber.double = valueA.double / valueB.double
    }
    
    return newNumber
}
