//
//  variable.swift
//  InterpreterPattern
//
//  Created by Jae kwon Choi on 2023/09/07.
//

import Foundation


class Variable: Expression {
  private var name: String

  init(name: String) {
    self.name = name
  }

  func interpret(variables: [String : Expression]) -> Double {
    if let expression = variables[name] {
      return expression.interpret(variables)
    } else {
      return 0.00
    }
  }
}

