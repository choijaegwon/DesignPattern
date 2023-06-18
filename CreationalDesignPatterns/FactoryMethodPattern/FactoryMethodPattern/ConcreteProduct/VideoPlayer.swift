//
//  VideoPlayer.swift
//  FactoryMethodPattern
//
//  Created by Jae kwon Choi on 2023/06/18.
//

import Foundation

/// Concrete Product
class VideoPlayer: Player {
    var content: String
    required init(content: String) {
        self.content = content
    }
    
    func play() {
        print("VideoPlayer Play")
    }
    
    func pause() {
        print("VideoPlayer Pause")
    }
    
    func changeContent(name: String) {
        print("\(self.content)에서 \(name)로 비디오 변경")
        self.content = name
    }
}
