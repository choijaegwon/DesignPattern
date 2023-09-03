//
//  SoundButton.swift
//  BridgePattern
//
//  Created by Jae kwon Choi on 2023/09/03.
//

import Foundation

// Abstraction
class SoundButton {
    // Bridge
    var soundButtonImplementor: SoundButtonImplementor?
    
    init(implementor: SoundButtonImplementor) {
        self.soundButtonImplementor = implementor
    }
    
    func up() {
        self.soundButtonImplementor?.volumeUp()
    }
    func down() {
        self.soundButtonImplementor?.volumeDown()
    }
    func set(percent: Float) {
        self.soundButtonImplementor?.setVolume(percent: percent)
    }
}

extension SoundButton {
    func mute() {
        self.soundButtonImplementor?.setVolume(percent: 0.0)
    }
}
