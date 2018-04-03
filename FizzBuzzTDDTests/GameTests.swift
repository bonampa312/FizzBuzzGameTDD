//
//  GameTests.swift
//  FizzBuzzTDDTests
//
//  Created by Santiago Romero Restrepo on 4/2/18.
//  Copyright © 2018 Santiago Romero Restrepo. All rights reserved.
//

import XCTest
@testable import FizzBuzzTDD

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testScoreStartsAtZero () {
        XCTAssertEqual(game.score, 0)
    }
    
    func testOnPlayScoreIncremented () {
        let _ = game.play(move : .number) // 1
        XCTAssertEqual(game.score, 1)
    }
    
    func testOnPlayTwiceScoreIncremented () {
        game.score = 1
        let _ = game.play(move : .number) // 2
        XCTAssertEqual(game.score, 2)
    }
    
    func testIsMoveIsRightWithFizz () {
        game.score = 2
        let result = game.play(move: .fizz)
        XCTAssertTrue(result.right)
        XCTAssertEqual(result.score, 3)
    }
    
    func testIsMoveIsWrongWithFizz () {
        game.score = 1
        let result = game.play(move: .fizz)
        XCTAssertFalse(result.right)
        XCTAssertEqual(result.score, 1)
    }
    
    func testIsMoveIsRightWithBuzz () {
        game.score = 4
        let result = game.play(move: .buzz)
        XCTAssertTrue(result.right)
        XCTAssertEqual(result.score, 5)
    }
    
    func testIsMoveIsWrongWithBuzz () {
        game.score = 7
        let result = game.play(move: .buzz)
        XCTAssertFalse(result.right)
        XCTAssertEqual(result.score, 7)
    }
    
    func testIsMoveIsRightWithFizzBuzz () {
        game.score = 14
        let result = game.play(move: .fizzBuzz)
        XCTAssertTrue(result.right)
        XCTAssertEqual(result.score, 15)
    }
    
    func testIsMoveIsWrongWithFizzBuzz () {
        game.score = 10
        let result = game.play(move: .fizzBuzz)
        XCTAssertFalse(result.right)
        XCTAssertEqual(result.score, 10)
    }
    
    func testIsMoveRightWithNumber () {
        game.score = 10
        let result = game.play(move: .number) // 11
        XCTAssertTrue(result.right)
        XCTAssertEqual(result.score, 11)
    }
    
    func testIsMoveIsWrongWithNumberWithFizz () {
        game.score = 2
        let result = game.play(move: .number) // 3
        XCTAssertFalse(result.right)
        XCTAssertEqual(result.score, 2)
    }
    
    func testIsMoveIsWrongWithNumberWithBuzz () {
        game.score = 4
        let result = game.play(move: .number) // 5
        XCTAssertFalse(result.right)
        XCTAssertEqual(result.score, 4)
    }
    
    func testIsMoveIsWrongWithNumberWithFizzBuzz () {
        game.score = 14
        let result = game.play(move: .number) // 15
        XCTAssertFalse(result.right)
        XCTAssertEqual(result.score, 14)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: .number) // 1
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(move: .number) // 1
        XCTAssertNotNil(response.score)
    }
    
}
