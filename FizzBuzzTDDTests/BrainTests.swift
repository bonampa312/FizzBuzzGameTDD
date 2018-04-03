//
//  BrainTests.swift
//  FizzBuzzTDDTests
//
//  Created by Santiago Romero Restrepo on 4/2/18.
//  Copyright © 2018 Santiago Romero Restrepo. All rights reserved.
//

import XCTest
@testable import FizzBuzzTDD

class BrainTests: XCTestCase {
    
    let brain = Brain()
    
    override func setUp () {
        super.setUp()
    }
    
    override func tearDown () {
        super.tearDown()
    }
    
    func testIsDividedByThree () {
        let answer = brain.isDividedByThree(number: 3)
        XCTAssertTrue(answer)
    }
    
    func testIsNotDividedByThree () {
        let answer = brain.isDividedByThree(number: 4)
        XCTAssertFalse(answer)
    }
    
    func testIsDividedByFive () {
        let answer = brain.isDividedByFive(number: 15)
        XCTAssertTrue(answer)
    }
    
    func testIsNotDividedByFive () {
        let answer = brain.isDividedByFive(number: 6)
        XCTAssertFalse(answer)
    }
    
    func testIsDividedByThreeAndFive () {
        let answer = brain.isDividedByThreeAndFive(number: 15)
        XCTAssertTrue(answer)
    }
    
    func testIsNotDividedByThreeAndFive () {
        let answer = brain.isDividedByThreeAndFive(number: 20)
        XCTAssertFalse(answer)
    }
    
    func testSayFizz () {
        let result = brain.check(number: 3)
        XCTAssertEqual(result, Move.fizz)
    }
    
    func testSayBuzz () {
        let result = brain.check(number: 5)
        XCTAssertEqual(result, Move.buzz)
    }
    
    func testSayFizzBuzz () {
        let result = brain.check(number: 15)
        XCTAssertEqual(result, Move.fizzBuzz)
    }
    
    func testSayNumber () {
        let result = brain.check(number: 1)
        XCTAssertEqual(result, Move.number)
    }
    
}
