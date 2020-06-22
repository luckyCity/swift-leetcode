//
//  155_MinStackTest.swift
//  StackTest
//
//  Created by renpeng on 2020/6/21.
//  Copyright © 2020 renpeng. All rights reserved.
//

import XCTest
@testable import Stack

class _55_MinStackTest: XCTestCase {
    
    func testEmpty() throws {
        let minStack = MinStack()
        minStack.push(-2);
        minStack.push(0);
        minStack.push(-3);
        
        
        
//        XCTAssertEqual(min, -3)
        
        
        minStack.pop();
        XCTAssertEqual(minStack.top(), 0)
//        XCTAssertEqual(minStack.getMin(), -2)
    }

}
