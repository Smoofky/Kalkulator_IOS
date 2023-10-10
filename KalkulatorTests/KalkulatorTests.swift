//
//  KalkulatorTests.swift
//  KalkulatorTests
//
//  Created by student on 10/10/2023.
//

import XCTest
@testable import Kalkulator

final class KalkulatorTests: XCTestCase {

    
    func testPositiveScenarioForAddCalculation() throws {
        let result = Calculations().addOperation(2,2)
        XCTAssertEqual(result, 4)
    }
    func testNegativeScenarioForAddCalculation() throws {
        let result = Calculations().addOperation(2,2)
        XCTAssertNotEqual(result, 22)
    }
    func testPositiveScenarioForSubCalculation() throws {
        let result = Calculations().subOperation(2,10)
        XCTAssertEqual(result, -8)
    }
    func testNegativeScenarioForSubCalculation() throws {
        let result = Calculations().subOperation(2,298)
        XCTAssertNotEqual(result, 41)
    }
    func testPositiveScenarioForProdCalculation() throws {
        let result = Calculations().multiplyOperation(5,15)
        XCTAssertEqual(result, 75)
    }
    func testNegativeScenarioForProdCalculation() throws {
        let result = Calculations().multiplyOperation(2,2)
        XCTAssertNotEqual(result, 1)
    }
    func testPositiveScenarioForDivCalculation() throws {
        do {
          let result = try Calculations().divOperation(20,2)
            XCTAssertEqual(result, 10)
        } catch {
            print("Error")
        }
    }
    func testZeroScenarioForDivCalculation() throws {
        XCTAssertThrowsError(try Calculations().divOperation(10, 0))
    }
    func testPositiveScenarioForSinCalculation() throws {
        let result = Calculations().sinOperation(1 )
        XCTAssertEqual(result, sin(1))
    }
    
    
    
    
    
    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
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
