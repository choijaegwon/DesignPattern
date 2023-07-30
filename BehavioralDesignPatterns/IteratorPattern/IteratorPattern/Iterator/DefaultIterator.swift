//
//  DefaultIterator.swift
//  IteratorPattern
//
//  Created by Jae kwon Choi on 2023/07/30.
//

import Foundation

/// DefaultIterator
final class defaultIterator<T>: Iterator {
    typealias Element = T
    private var items: [Element] = []
    private var current = 0
 
    init(items: [Element]) {
        self.items = items
    }
 
    func next() -> Element? {
        guard hasNext() else { return nil }
        defer { self.current += 1 }
 
        return items[current]
    }
 
    func hasNext() -> Bool {
        current < items.count
    }
}
