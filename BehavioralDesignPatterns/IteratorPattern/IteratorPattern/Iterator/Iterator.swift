//
//  Iterator.swift
//  IteratorPattern
//
//  Created by Jae kwon Choi on 2023/07/30.
//

import Foundation

/// Iterator
protocol Iterator {
    associatedtype Element
    func hasNext() -> Bool
    func next() -> Element?
}
