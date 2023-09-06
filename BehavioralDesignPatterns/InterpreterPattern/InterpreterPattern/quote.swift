//
//  quote.swift
//  InterpreterPattern
//
//  Created by Jae kwon Choi on 2023/09/07.
//

import Foundation

class Quote {

  var partsPrice: Double
  var laborPrice: Double
  var adjustments: String?

  init(partsPrice: Double, laborPrice: Double, adjustments: String?) {
    self.partsPrice = partsPrice
    self.laborPrice = laborPrice
    self.adjustments = adjustments
  }

  convenience init(partsPrice: Double, laborPrice: Double) {
    self.init(partsPrice: partsPrice, laborPrice: laborPrice, adjustments: nil)
  }

  var totalPrice: Double {
    if let adjustments = adjustments {
      var variables = [String: Expression] ()
      variables["l"] = Number(value: laborPrice)
      variables["p"] = Number(value: partsPrice)
      let evaluator = Evaluator(expression: adjustments)
      return evaluator.interpret(variables)
    } else {
      return partsPrice + laborPrice
    }
  }
}
