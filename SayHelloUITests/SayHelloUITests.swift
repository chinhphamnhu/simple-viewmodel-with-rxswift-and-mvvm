//
//  SayHelloUITests.swift
//  SayHelloUITests
//
//  Created by Chính Phạm on 6/1/19.
//  Copyright © 2019 Chính Phạm. All rights reserved.
//

import XCTest

class SayHelloUITests: XCTestCase {

    override func setUp() {
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
