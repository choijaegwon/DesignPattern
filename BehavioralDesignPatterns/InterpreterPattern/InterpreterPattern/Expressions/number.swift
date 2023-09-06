//
//  number.swift
//  InterpreterPattern
//
//  Created by Jae kwon Choi on 2023/09/07.
//

import Foundation

class Number: Expression {
  var value: Double

  init(value: Double) {
    self.value = value
  }

  func interpret(variables: [String : Expression]) -> Double {
    return value
  }
}

