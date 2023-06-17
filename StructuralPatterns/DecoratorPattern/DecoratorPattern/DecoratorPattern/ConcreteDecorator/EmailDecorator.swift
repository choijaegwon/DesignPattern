//
//  EmailDecorator.swift
//  DecoratorPattern
//
//  Created by Jae kwon Choi on 2023/06/17.
//

import Foundation
/// Concrete Decorator
class EmailDecorator: NotifierDecorator {
    var wrappee: NotifierComponent
    
    required init(notifier: NotifierComponent) {
        self.wrappee = notifier
    }
    
    func notify(message: String) {
        let to = getInfo()
        print("\(to)에게 Email로 \(message) 전송완료")
        self.wrappee.notify(message: message)
    }
    
    func getInfo() -> String {
        print("보낼 Email 주소를 입력하세요 : ", separator: "", terminator: "")
        return readLine()!
    }
}
