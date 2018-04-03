//
//  ViewControllerUnitTests.swift
//  FizzBuzzTDDTests
//
//  Created by Santiago Romero Restrepo on 4/2/18.
//  Copyright © 2018 Santiago Romero Restrepo. All rights reserved.
//

import XCTest
@testable import FizzBuzzTDD

class ViewControllerUnitTests: XCTestCase {
    
    var viewController : ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testMoveOneIncrementScore () {
        viewController.play(move: .number) // 1
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementScore () {
        viewController.play(move: .number) // 1
        viewController.play(move: .number) // 2
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testFizzIncrementScore () {
        viewController.game?.score = 2
        viewController.play(move: .fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzIncrementScore () {
        viewController.game?.score = 4
        viewController.play(move: .buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 5)
    }
    
    func testFizzBuzzIncrementScore () {
        viewController.game?.score = 14
        viewController.play(move: .fizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testUserWrongMovementNumber () {
        viewController.game?.score = 6
        viewController.play(move: .fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 6)
    }
    
}
