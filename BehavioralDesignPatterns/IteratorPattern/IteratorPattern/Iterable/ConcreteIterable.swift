//
//  ConcreteIterable.swift
//  IteratorPattern
//
//  Created by Jae kwon Choi on 2023/07/30.
//

import Foundation

final class MapCollection: Iterable {
    private var map: [String: String] = [:]
 
    func add(element: String, for key: String) {
        map.updateValue(element, forKey: key)
    }
 
    func makeIterator() -> defaultIterator<String> {
        return defaultIterator<String>(items: self.map.values.map({ $0 }))
    }
}
 
final class ListCollection: Iterable {
    private var list: [String] = []
 
    func add(element: String) {
        list.append(element)
    }
 
    func makeIterator() -> defaultIterator<String> {
        return defaultIterator<String>(items: self.list)
    }
}
