//
//  Number.swift
//  Calculator
//
//  Created by Cameron Small on 2/25/24.
//

import Foundation

class Number {
    
    var decimalPlace = -1
    var integer = 0
    var double = 0.0
    
    func reset() {
        self.decimalPlace = -1
        self.integer = 0
        self.double = 0.0
    }
    
    func addNumber(_ value: Int) {
        
        print("\(value)")
        if isDouble() {
            var number = Double(value)
            for _ in 0...self.decimalPlace {
                number /= 10.0
            }
            print("adding \(number)")
            self.double += number
            self.decimalPlace += 1
        }
        else {
            self.integer *= 10
            self.integer += value
        }
    }
    
    func toggleSign() {
        
        if isDouble() {
            self.double *= -1.0
        }
        else {
            self.integer *= -1
        }
    }
    
    func makeDouble() {
        if !self.isDouble() {
            self.decimalPlace = 0
            self.double = Double(self.integer)
        }
    }
    
    func toPercent() {
        self.makeDouble()
        self.double *= 0.01
    }
    
    func copy(number: Number) {
        self.decimalPlace = number.decimalPlace
        self.integer = number.integer
        self.double = number.double
    }
    
    func toString() -> String {
        
        if isDouble() {
            let remainder = self.double.truncatingRemainder(dividingBy: 1)
            if remainder == 0 {
                var string = "0."
                for _ in 1...self.decimalPlace {
                    string += "0"
                }
                return string
            }
            return "\(self.double)"
        }
        return "\(self.integer)"
    }
    
    func isDouble() -> Bool { decimalPlace >= 0 }
}

///
/// \brief operator functions
func noOperation(valueA: Number, valueB: Number) -> Number { Number() }

func add(valueA: Number, valueB: Number) -> Number {
    let newNumber = Number()
    if valueA.isDouble() || valueB.isDouble() {
        valueA.makeDouble()
        valueB.makeDouble()
        newNumber.makeDouble()
        newNumber.double = valueA.double + valueB.double
    }
    else {
        newNumber.integer = valueA.integer + valueB.integer
    }
    
    return newNumber
}

func subtract(valueA: Number, valueB: Number) -> Number {
    let newNumber = Number()
    if valueA.isDouble() || valueB.isDouble() {
        valueA.makeDouble()
        valueB.makeDouble()
        newNumber.makeDouble()
        newNumber.double = valueA.double - valueB.double
    }
    else {
        newNumber.integer = valueA.integer - valueB.integer
    }
    
    return newNumber
}

func multiply(valueA: Number, valueB: Number) -> Number {
    let newNumber = Number()
    if valueA.isDouble() || valueB.isDouble() {
        valueA.makeDouble()
        valueB.makeDouble()
        newNumber.makeDouble()
        newNumber.double = valueA.double * valueB.double
    }
    else {
        newNumber.integer = valueA.integer * valueB.integer
    }
    
    return newNumber
}

func divide(valueA: Number, valueB: Number) -> Number {
    let newNumber = Number()
    valueA.makeDouble()
    valueB.makeDouble()
    newNumber.makeDouble()
    if valueB.double != 0.0 {
        newNumber.double = valueA.double / valueB.double
    }
    
    return newNumber
}