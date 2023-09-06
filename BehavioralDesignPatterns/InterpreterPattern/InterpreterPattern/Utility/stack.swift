//
//  stack.swift
//  InterpreterPattern
//
//  Created by Jae kwon Choi on 2023/09/07.
//

import Foundation

struct Stack<T> {

  var items = [T]()

  mutating func push(item: T) {
    items.append(item)
  }

  mutating func pop() -> T {
    return items.removeLast()
  }
}

