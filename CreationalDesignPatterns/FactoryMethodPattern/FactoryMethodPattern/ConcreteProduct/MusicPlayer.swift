//
//  MusicPlayer.swift
//  FactoryMethodPattern
//
//  Created by Jae kwon Choi on 2023/06/18.
//

import Foundation

/// Concrete Product
class MusicPlayer: Player {
    var content: String
    required init(content: String) {
        self.content = content
    }
    
    func play() {
        print("MusicPlayer Play")
    }
    
    func pause() {
        print("MusicPlayer Pause")
    }
    
    func changeContent(name: String) {
        print("\(self.content)에서 \(name)로 음악 변경")
        self.content = name
    }
}
