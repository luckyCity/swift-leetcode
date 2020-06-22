//
//  MinStack.swift
//  Stack
//
//  Created by renpeng on 2020/6/21.
//  Copyright © 2020 renpeng. All rights reserved.
//

import Foundation

class MinStack {

    var stack: [Int]
    var minStack: [Int]

    /** initialize your data structure here. */
    init() {
        stack = []
        minStack = []
    }

    func push(_ x: Int) {
        stack.append(x)
        if minStack.count == 0 {
            minStack.append(x)
        } else {
            minStack.append(min(x, minStack[minStack.count - 1]))
        }
    }

    func pop() {
        stack.removeLast()
        minStack.removeLast()
    }

    func top() -> Int {
        return stack[stack.count - 1]
    }

    func getMin() -> Int {
        return minStack[minStack.count - 1]
    }
}


/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(x)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */

class MinStackOne {
    //需要使用双栈实现
    //保存数据
    var stack: [Int]
    //保存最小值
    var sm: [Int]
    /** initialize your data structure here. */
    init() {
        stack = [Int]()
        sm = [Int]()
    }

    func push(_ x: Int) {
        stack.append(x)
        if sm.isEmpty || (!sm.isEmpty && sm.last! >= x)
        {
            sm.append(x)
        }
    }

    func pop() {
        if stack.last! == sm.last!
        {
            sm.removeLast()
        }
        stack.removeLast()
    }

    func top() -> Int {
        //获取堆栈第一个元素
        return stack.last!
    }

    func getMin() -> Int {
        //获取堆栈第一个元素
        return sm.last!
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(x)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */

class MinStackTwo {

    /** initialize your data structure here. */
    var stackArray: [Int]
    var minIndex: Int = 0
    init() {
      stackArray = [Int]()
    }

    func push(_ x: Int) {
      stackArray.append(x)
      let currMin = stackArray[minIndex]
      if x < currMin {
          minIndex = stackArray.count - 1
      }
    }

    func pop() {
      stackArray.removeLast()
      adjustMinIndex()
    }

    func top() -> Int {
      return stackArray.last ?? 0
    }

    func getMin() -> Int {
      return stackArray[minIndex]
    }

    func adjustMinIndex() {
        minIndex = 0
        guard stackArray.count > 1 else {return}
        var temp = stackArray[minIndex]
        for i in 1..<stackArray.count {
          if stackArray[i] < temp {
            temp = stackArray[i]
            minIndex = i
          }
        }
    }
}

class MinStackThree {

    private var stack: [(Int, Int)]

    init() {
        stack = []
    }

    func push(_ x: Int) {
        if stack.isEmpty {
            stack.append((x, x))
        } else {
            let top = stack.last!
            stack.append((x, x < top.1 ? x : top.1))
        }
    }

    func pop() {
        let _ = stack.popLast()
    }

    func top() -> Int {
        return stack.last!.0
    }

    func getMin() -> Int {
        return stack.last!.1
    }
}
