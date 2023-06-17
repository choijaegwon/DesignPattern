//
//  Notifier.swift
//  DecoratorPattern
//
//  Created by Jae kwon Choi on 2023/06/17.
//

import Foundation

/// Concrete Component
class Notifier: NotifierComponent {
    func notify(message: String) {
        print("\(message) 전송 완료")
    }
}
