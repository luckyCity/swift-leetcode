//
//  Valid_ParenthesesTest.swift
//  StackTest
//
//  Created by renpeng on 2020/6/20.
//  Copyright © 2020 renpeng. All rights reserved.
//

import XCTest
@testable import Stack

class Valid_ParenthesesTest: XCTestCase {

    func testParentheses()  {
        let s = String.init()
        let vp = ValidParentheses.init()

        XCTAssertTrue(vp.isValid(s))
        XCTAssertTrue(vp.isValid("()"))
        XCTAssertTrue(vp.isValid("()[]{}"))
        XCTAssertFalse(vp.isValid("(]"))
        XCTAssertFalse(vp.isValid("([)]"))
        XCTAssertTrue(vp.isValid("{[]}"))
    }
    
    func testParentheses1 () {
        let vp = ValidParentheses2.init()

//        XCTAssertTrue(vp.isValid("()"))
//        XCTAssertTrue(vp.isValid("()[]{}"))
//        XCTAssertFalse(vp.isValid("(]"))
//        XCTAssertFalse(vp.isValid("([)]"))
        XCTAssertTrue(vp.isValid("{[]}"))

    }

}
