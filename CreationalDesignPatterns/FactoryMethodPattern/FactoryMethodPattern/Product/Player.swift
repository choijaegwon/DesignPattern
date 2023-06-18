//
//  Player.swift
//  FactoryMethodPattern
//
//  Created by Jae kwon Choi on 2023/06/18.
//

import Foundation

/// Product Interface
protocol Player {
    var content: String { get set }
    /// 컨텐츠 타입
    init(content: String)
    /// 재생
    func play()
    /// 재생 중지
    func pause()
    /// 컨텐츠 변경
    func changeContent(name: String)
}
