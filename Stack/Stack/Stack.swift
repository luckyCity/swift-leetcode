//
//  Stack.swift
//  Stack
//
//  Created by renpeng on 2020/6/19.
//  Copyright © 2020 renpeng. All rights reserved.
//

import Foundation

/*
 Last-in first-out stack (LIFO)
 Push and pop are O(1) operations.
 */

public struct Stack<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var top: T? {
        return array.last
    }
    
    public mutating func clear() {
        array.removeAll()
    }
}

extension Stack: Sequence {
    public func makeIterator() -> AnyIterator<T> {
        var curr = self
        return AnyIterator {
            return curr.pop()
        }
    }
}

//public struct Stack<T> {
//  fileprivate var array = [T]()
//
//  public var isEmpty: Bool {
//    return array.isEmpty
//  }
//
//  public var count: Int {
//    return array.count
//  }
//
//  public mutating func push(_ element: T) {
//    array.append(element)
//  }
//
//  public mutating func pop() -> T? {
//    return array.popLast()
//  }
//
//  public var top: T? {
//    return array.last
//  }
//}
//
//extension Stack: Sequence {
//  public func makeIterator() -> AnyIterator<T> {
//    var curr = self
//    return AnyIterator {
//      return curr.pop()
//    }
//  }
//}
