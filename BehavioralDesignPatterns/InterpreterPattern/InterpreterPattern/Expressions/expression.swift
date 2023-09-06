//
//  expression.swift
//  InterpreterPattern
//
//  Created by Jae kwon Choi on 2023/09/07.
//

import Foundation

protocol Expression {
  func interpret(variables: [String:Expression]) -> Double
}

