//
//  Customer.swift
//  ObserverPattern
//
//  Created by Jae kwon Choi on 2023/05/29.
//

import Foundation

class Customer: Observer {
    var id: String
    init(id: String) {
        self.id = id
    }
    func update(message: String) {
        print("\(id)님 \(message)수신\n")
    }
}
