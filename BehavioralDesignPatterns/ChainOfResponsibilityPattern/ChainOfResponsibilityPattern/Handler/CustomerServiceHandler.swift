//
//  CustomerServiceHandler.swift
//  ChainOfResponsibilityPattern
//
//  Created by Jae kwon Choi on 2023/09/05.
//

import Foundation
// Handler
protocol CustomerServiceHandler: class {
    var nextHandler: CustomerServiceHandler? { get set }
    func setNext(handler: CustomerServiceHandler)
    func handle(request: String) -> String
}

extension CustomerServiceHandler {
    func setNext(handler: CustomerServiceHandler) {
        if self.nextHandler == nil {
            self.nextHandler = handler
        } else {
            self.nextHandler?.setNext(handler: handler)
        }
    }
}
