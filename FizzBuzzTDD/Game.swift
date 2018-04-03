//
//  Game.swift
//  FizzBuzzTDD
//
//  Created by Santiago Romero Restrepo on 4/2/18.
//  Copyright © 2018 Santiago Romero Restrepo. All rights reserved.
//

import Foundation

class Game {
    
    var score : Int
    let brain : Brain
    
    init() {
        score = 0
        brain = Brain()
    }
    
    
    func play (move: Move) -> (right: Bool, score : Int) {
        let result = brain.check(number: score+1)
        if (result == move) {
            score += 1
            return (right: true, score: score)
        }
        return (right: false, score: score)
    }
    
}
