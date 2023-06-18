//
//  PlayerFactory.swift
//  FactoryMethodPattern
//
//  Created by Jae kwon Choi on 2023/06/18.
//

import Foundation

/// Factory (Concrete Creator)
class PlayerFactory: PlayerCreator {
    func createPlayer(content: String, contentType: ContentType) -> Player {
        switch contentType {
        case .music:
            return MusicPlayer(content: content)
        case .video:
            return VideoPlayer(content: content)
        }
    }
}
