//
//  MusicFile.swift
//  CompositePatterns
//
//  Created by Jae kwon Choi on 2023/07/30.
//

import Foundation

/// Leaf
final class MusicFile: FileComponent {
    var size: Int
    var name: String
    var artist: String
    
    func open() {
        print("\(self.name) Music Artist  : \(self.artist)")
    }
    
    func getSize() -> Int {
        return self.size
    }
    
    init(size: Int, name: String, artist: String) {
        self.size = size
        self.name = name
        self.artist = artist
    }
}
