//
//  SlackDecorator.swift
//  DecoratorPattern
//
//  Created by Jae kwon Choi on 2023/06/18.
//

import Foundation
/// Concrete Decorator
class SlackDecorator: NotifierDecorator {
    var wrappee: NotifierComponent
    
    required init(notifier: NotifierComponent) {
        self.wrappee = notifier
    }
    
    func notify(message: String) {
        let to = companyInfo()
        print("\(to) Slack 채널에 \(message) 정송완료")
        wrappee.notify(message: message)
    }
    
    func companyInfo() -> String {
        print("보낼 Company 채널을 입력하세요 : ", separator: "", terminator: "")
        return readLine()!
    }
}
