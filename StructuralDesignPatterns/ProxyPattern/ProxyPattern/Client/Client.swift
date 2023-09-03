//
//  Client.swift
//  ProxyPattern
//
//  Created by Jae kwon Choi on 2023/09/03.
//

import Foundation

// Client
class Client {
    var auth: AccessAuth
    
    init(auth: AccessAuth) {
        self.auth = auth
    }
}

enum AccessAuth {
    case owner
    case guest
}
