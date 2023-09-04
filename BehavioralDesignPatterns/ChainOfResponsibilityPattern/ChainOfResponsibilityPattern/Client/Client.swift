//
//  Client.swift
//  ChainOfResponsibilityPattern
//
//  Created by Jae kwon Choi on 2023/09/05.
//

import Foundation
// Client
class Client {
    private var firstHandler: CustomerServiceHandler?
    
    func request(request: String) -> String {
        return self.firstHandler?.handle(request: request) ?? "firstHandler를 설정해주세요"
    }
    func addHandler(handler: CustomerServiceHandler) {
        if let firstHandler = firstHandler {
            firstHandler.setNext(handler: handler)
        } else {
            self.firstHandler = handler
        }
    }
}
