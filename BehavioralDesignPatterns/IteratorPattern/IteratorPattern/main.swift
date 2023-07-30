//
//  main.swift
//  IteratorPattern
//
//  Created by Jae kwon Choi on 2023/07/30.
//

let map = MapCollection()
let list = ListCollection()
 
map.add(element: "1", for: "1")
map.add(element: "2", for: "2")
map.add(element: "3", for: "3")
 
list.add(element: "11")
list.add(element: "22")
list.add(element: "33")
 
let iterators = [map.makeIterator(), list.makeIterator()]
 
for iterator in iterators {
    while iterator.hasNext() {
        print(iterator.next() ?? "0")
    }
}
