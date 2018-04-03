//
//  ViewControllerUITests.swift
//  FizzBuzzTDDUITests
//
//  Created by Santiago Romero Restrepo on 4/2/18.
//  Copyright © 2018 Santiago Romero Restrepo. All rights reserved.
//

import XCTest
@testable import FizzBuzzTDD

class ViewControllerUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testTapsNumberButtonIncrementsScore () {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        let newLabel = numberButton.label
        XCTAssertEqual(newLabel, "1")
    }
    
    func testTapsTwiceNumberButtonIncrementsScore () {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        numberButton.tap()
        let newLabel = numberButton.label
        XCTAssertEqual(newLabel, "2")
    }
    
    func testTapsFizzButtonIncrementsScore () {
        let app = XCUIApplication()
        let fizzButton = app.buttons["fizzButton"]
        let numberButton = app.buttons["numberButton"]
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
    }
    
    func testTapsBuzzButtonIncrementsScore () {
        let app = XCUIApplication()
        let fizzButton = app.buttons["fizzButton"]
        let numberButton = app.buttons["numberButton"]
        let buzzButton = app.buttons["buzzButton"]
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "5")
    }
    
    func testTapsFizzBuzzButtonIncrementsScore () {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzBuzzButton = app.buttons["fizzBuzzButton"]
        
        playTo14()
        
        fizzBuzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "15")
    }
    
    func playTo14() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        buzzButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
    }
    
    func testTapsPlayAgainButton () {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let playAgainButton = app.buttons["playAgainButton"]
        
        numberButton.tap()
        numberButton.tap()
        
        var newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
        playAgainButton.tap()
        newScore = numberButton.label
        XCTAssertEqual(newScore, "0")
    }
    
}
