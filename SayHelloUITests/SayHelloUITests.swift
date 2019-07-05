//
//  SayHelloUITests.swift
//  SayHelloUITests
//
//  Created by Chính Phạm on 6/1/19.
//  Copyright © 2019 Chính Phạm. All rights reserved.
//

import XCTest

class SayHelloUITests: XCTestCase {

    let app = XCUIApplication()

    override func setUp() {
        super.setUp()
        setupSnapshot(app)
        app.launch()
    }

    func testSayHello() {
        snapshot("0Launch")
        app.textFields["Hello TextField"].tap()
        UIPasteboard.general.string = "I'm Chính"
        app.textFields["Hello TextField"].doubleTap()
        app.menuItems.element(boundBy: 0).tap()
        app.textFields["Hello TextField"].typeText("\n")
        snapshot("InputName")
        app.buttons["Say Hello"].tap()
        snapshot("Tap To Hello")
    }
}
