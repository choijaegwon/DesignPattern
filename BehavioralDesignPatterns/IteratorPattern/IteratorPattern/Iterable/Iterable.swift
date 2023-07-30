//
//  Iterable.swift
//  IteratorPattern
//
//  Created by Jae kwon Choi on 2023/07/30.
//

import Foundation

/// Iterable
protocol Iterable {
    associatedtype Iterator
    func makeIterator() -> Iterator
}
 
