//
//  CounterAppUITests.swift
//  CounterAppUITests
//
//  Created by José Inácio Athayde Ferrarini on 31/07/24.
//

import XCTest

enum CounterAppUITestsErrors: Error {
    case counterLabelValueUnavailable
}

final class CounterAppUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
    }
    
    func testIncrementCounter() throws {
        let app = XCUIApplication()
        app.launch()
        
        // Given
        guard let initialCounterValue: Int = Int(XCUIApplication().staticTexts["counterLabel"].label) else {
            throw CounterAppUITestsErrors.counterLabelValueUnavailable
        }
        
        // When
        XCUIApplication().staticTexts["Increment"].tap()
        
        // Then
        guard let currentCounterValue: Int = Int(XCUIApplication().staticTexts["counterLabel"].label) else {
            throw CounterAppUITestsErrors.counterLabelValueUnavailable
        }

        XCTAssertEqual(currentCounterValue, initialCounterValue + 1)
    }
    
    func testDecrementCounter() throws {
        let app = XCUIApplication()
        app.launch()

        // Given
        guard let initialCounterValue: Int = Int(XCUIApplication().staticTexts["counterLabel"].label) else {
            throw CounterAppUITestsErrors.counterLabelValueUnavailable
        }
        
        // When
        XCUIApplication().staticTexts["Decrement"].tap()
        
        // Then
        guard let currentCounterValue: Int = Int(XCUIApplication().staticTexts["counterLabel"].label) else {
            throw CounterAppUITestsErrors.counterLabelValueUnavailable
        }

        XCTAssertEqual(currentCounterValue, initialCounterValue - 1)
    }

}
