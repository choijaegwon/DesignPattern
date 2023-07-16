//
//  Customer.swift
//  FacadePattern
//
//  Created by Jae kwon Choi on 2023/07/16.
//

import Foundation

struct Customer {
    let identifier: String
    var name: String
    var address: String
}

extension Customer: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }
    static func == (lhs: Customer, rhs: Customer) -> Bool {
        return lhs.identifier == rhs.identifier
    }
}
