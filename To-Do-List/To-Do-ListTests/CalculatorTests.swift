//
//  CalculatorTests.swift
//  To-Do-ListTests
//
//  Created by Mobile2 on 12/03/25.
//

import XCTest
@testable import To_Do_List

final class CalculatorTests: XCTestCase {

    var calculator: Calculator!
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAddition() {
        let result = calculator.add(10, 20)
        XCTAssertEqual(result, 30, "Addition function failed.")
    }
    
    func testDivision() {
        let result = calculator.divide(10, 2)
        XCTAssertEqual(result, 5, "Division function failed.")
    }
    
    func testDivisionByZero() {
        let result = calculator.divide(10, 0)
        XCTAssertNil(result, "Division By Zero Should Return nil.")
    }
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        calculator = Calculator()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        calculator = nil
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
