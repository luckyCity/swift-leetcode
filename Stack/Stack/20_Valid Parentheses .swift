//
//  20_Valid Parentheses .swift
//  Stack
//
//  Created by renpeng on 2020/6/20.
//  Copyright © 2020 renpeng. All rights reserved.
//

import Foundation

class ValidParentheses {
    func isValid(_ s: String) -> Bool {
    
        if s.isEmpty {
            return true
        }
        
        if s.count % 2 > 0 {
            return false
        }
        
        let map:[Character:Character]=[")":"(",
                                       "}":"{",
                                       "]":"["]
        
        // 如果开始是右边的符号则断开
        if map[s.first!] != nil {return false}
        
        var stack = Stack<Character>.init()
        //
        for c in s {
            if map[c] != nil && map[c] == stack.top  {
                let _ = stack.pop()
            } else {
                stack.push(c)
            }
        }
        return stack.isEmpty
    }
}

class ValidParentheses2 {
    func isValid(_ s: String) -> Bool {
        var opened = ""
        for char in s {
            if char == "(" {
                opened += ")"
            } else if char == "{" {
                opened += "}"
            } else if char == "[" {
                opened += "]"
            } else {
                if let prevVal = opened.last, prevVal == char {
                    opened.removeLast()
                } else {
                    return false
                }
            }
        }
        return opened.isEmpty
    }
}
