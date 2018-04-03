//
//  ViewController.swift
//  FizzBuzzTDD
//
//  Created by Santiago Romero Restrepo on 4/2/18.
//  Copyright © 2018 Santiago Romero Restrepo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gameScore : Int? {
        didSet {
            guard let newScore = gameScore else { return }
            numberButton.setTitle("\(String(describing: newScore))", for: .normal)
        }
    }
    
    var game : Game?
    
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        game = Game()
        guard let currentGame = game else { return }
        gameScore = currentGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play (move : Move) {
        guard let currentGame = game else {
            print("Game is nil! D:")
            return
        }
        let response = currentGame.play(move: move)
        gameScore = response.score
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender {
        case numberButton:
            play(move: .number) // "\(scoreUnwrapped + 1)"
        case fizzButton :
            play(move: .fizz)
        case buzzButton :
            play(move: .buzz)
        case fizzBuzzButton :
            play(move: .fizzBuzz)
        default:
            return
        }
    }
    
    @IBAction func playAgainButtonTapped(_ sender: UIButton) {
        game = Game()
        guard let currentGame = game else { return }
        gameScore = currentGame.score
    }
}

