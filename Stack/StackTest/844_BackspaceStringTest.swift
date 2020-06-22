//
//  844_BackspaceStringTest.swift
//  StackTest
//
//  Created by renpeng on 2020/6/22.
//  Copyright © 2020 renpeng. All rights reserved.
//

import XCTest

class _44_BackspaceStringTest: XCTestCase {

    
    func testExample() throws {
        let bsc = BackSpaceCompare()
        
        let S = "ab#c", T = "ad#c"
        XCTAssertTrue( bsc.backspaceCompare(S, T))
        
        let E = "ab##", F = "c#d#"
        XCTAssertTrue( bsc.backspaceCompare(E, F))

        let G = "a##c", H = "#a#c"
        XCTAssertTrue( bsc.backspaceCompare(G, H))
        
        let J = "a#c", K = "b"
        XCTAssertFalse( bsc.backspaceCompare(J, K))
    
    }
    

//    Input:
//    Output: true
//    Explanation: Both S and T become "ac".
//    Example 2:
//
//    Input: S = "ab##", T = "c#d#"
//    Output: true
//    Explanation: Both S and T become "".
//    Example 3:
//
//    Input: S = "a##c", T = "#a#c"
//    Output: true
//    Explanation: Both S and T become "c".
//    Example 4:
//
//    Input: S = "a#c", T = "b"
//    Output: false
//    Explanation: S becomes "c" while T becomes "b".



}
