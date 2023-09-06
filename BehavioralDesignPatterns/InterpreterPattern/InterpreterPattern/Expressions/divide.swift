//
//  divide.swift
//  InterpreterPattern
//
//  Created by Jae kwon Choi on 2023/09/07.
//

import Foundation

class Divide: Expression {

  var leftOperand: Expression
  var rightOperand: Expression

  init(leftOperand: Expression, rightOperand: Expression) {
    self.leftOperand = leftOperand
    self.rightOperand = rightOperand
  }

  func interpret(variables: [String : Expression]) -> Double {
    return leftOperand.interpret(variables) / rightOperand.interpret(variables)
  }
}

