//
//  Observer.swift
//  ObserverPattern
//
//  Created by Jae kwon Choi on 2023/05/29.
//

import Foundation

protocol Observer {
    var id: String { get set }
    func update(message: String)
}
