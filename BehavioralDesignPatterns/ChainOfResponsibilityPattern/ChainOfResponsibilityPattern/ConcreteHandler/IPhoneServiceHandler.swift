//
//  IPhoneServiceHandler.swift
//  ChainOfResponsibilityPattern
//
//  Created by Jae kwon Choi on 2023/09/05.
//

import Foundation
// Concrete Handler
class IPhoneServiceHandler: CustomerServiceHandler {
    var nextHandler: CustomerServiceHandler?
    
    func handle(request: String) -> String {
        if request == "iPhone" {
            return "iPhone 부서로 연결합니다."
        } else {
            if let response = nextHandler?.handle(request: request) {
                return response
            } else {
                return "원하시는 서비스는 제공하지 않습니다."
            }
        }
    }
}
