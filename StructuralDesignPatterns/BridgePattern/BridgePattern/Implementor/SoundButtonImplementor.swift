//
//  SoundButtonImplementor.swift
//  BridgePattern
//
//  Created by Jae kwon Choi on 2023/09/03.
//

import Foundation

// Implementor
protocol SoundButtonImplementor {
    var volume: Float { get set }
    func volumeUp()
    func volumeDown()
    func setVolume(percent: Float)
}
