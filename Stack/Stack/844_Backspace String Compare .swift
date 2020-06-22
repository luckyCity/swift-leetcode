//
//  844_Backspace String Compare .swift
//  Stack
//
//  Created by renpeng on 2020/6/22.
//  Copyright © 2020 renpeng. All rights reserved.
//

import Foundation

class BackSpaceCompare {
    init() {
        
    }
    
    func backspaceCompare(_ S: String, _ T: String) -> Bool {
        
        let stackS = process(S)
        
        let stackT = process(T)
        
        return stackS.elementsEqual(stackT)
        
    }
    
    func process(_ str: String) -> [Character] {
        var stack:[Character] = [Character]()
        
        for c in str {
            if c  == "#" {
                if stack.count > 0 {
                    let _ = stack.popLast()
                }
            } else {
                stack.append(c)
            }
        }
        return stack
    }
}
