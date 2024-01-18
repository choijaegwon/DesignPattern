//
//  Directory.swift
//  CompositePatterns
//
//  Created by Jae kwon Choi on 2023/07/30.
//

import Foundation

/// Composit
final class Directory: FileComponent {
    var size: Int
    var name: String
    var files: [FileComponent] = []
    func open() {
        print("\(self.name) Directory의 모든 File Open")
        for file in files {
            file.open()
        }
        print("\(self.name) Directory의 모든 File Open 완료\n")
    }
    
    func getSize() -> Int {
        var sum: Int = 0
        for file in files {
            sum += file.getSize()
        }
        return sum
    }
    
    func addFile(file: FileComponent) {
        self.files.append(file)
        self.size += file.size
    }
    
    init(size: Int, name: String) {
        self.size = size
        self.name = name
    }
}
