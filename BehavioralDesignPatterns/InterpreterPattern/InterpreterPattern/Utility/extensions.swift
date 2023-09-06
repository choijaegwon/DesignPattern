//
//  extensions.swift
//  InterpreterPattern
//
//  Created by Jae kwon Choi on 2023/09/07.
//

import Foundation

extension String {
  struct NumberFormatter {
    static let instance = NSNumberFormatter()
  }

  var doubleValue: Double? {
    return NumberFormatter.instance.numberFromString(self)?.doubleValue
  }

  var integerValue: Int? {
    return NumberFormatter.instance.numberFromString(self)?.integerValue
  }

  func contains(find: String) -> Bool {
    return self.rangeOfString(find) != nil
  }

  func trim() -> String {
    return self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
  }
}

