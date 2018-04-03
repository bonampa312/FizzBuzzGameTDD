//
//  Brain.swift
//  FizzBuzzTDD
//
//  Created by Santiago Romero Restrepo on 4/2/18.
//  Copyright © 2018 Santiago Romero Restrepo. All rights reserved.
//

import Foundation

class Brain {
    
    func isNumber (x number : Int, divisibleBy divisor : Int) -> Bool {
        return (number % divisor == 0)
    }
    
    func isDividedByThree (number : Int) -> Bool {
        return isNumber(x: number, divisibleBy: 3)
    }
    
    func isDividedByFive (number : Int) -> Bool {
        return isNumber(x: number, divisibleBy: 5)
    }
    
    func isDividedByThreeAndFive (number : Int) -> Bool {
        return isNumber(x: number, divisibleBy: 15)
    }
    
    func check (number : Int) -> Move {
        if isDividedByThreeAndFive(number: number) {
            return .fizzBuzz
        } else if isDividedByFive(number: number) {
            return .buzz
        } else if isDividedByThree(number: number) {
            return .fizz
        }
        return .number
    }
    
}
