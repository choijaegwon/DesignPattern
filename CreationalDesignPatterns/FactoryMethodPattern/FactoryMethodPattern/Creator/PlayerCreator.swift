//
//  PlayerCreator.swift
//  FactoryMethodPattern
//
//  Created by Jae kwon Choi on 2023/06/18.
//

import Foundation

/// Creator
protocol PlayerCreator {
    /// 플레이어 생성
    func createPlayer(content: String, contentType: ContentType) -> Player
}

enum ContentType {
    /// 음악
    case music
    /// 비디오
    case video
}
