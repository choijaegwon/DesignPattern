//
//  RadioSoundButton.swift
//  BridgePattern
//
//  Created by Jae kwon Choi on 2023/09/03.
//

import Foundation

// Concrete Implementor
class RadioSoundButton: SoundButtonImplementor {
    var volume: Float = 0
    func volumeUp() {
        if volume >= 1.0 {
            print("Radio 볼륨이 최대값입니다.")
        } else {
            volume = min(volume + 0.1, 1.0)
            print("Radio 볼륨 \(volume)으로 올림")
        }
    }
    
    func volumeDown() {
        if volume <= 0.0 {
            print("Radio 볼륨이 최저값입니다.")
        } else {
            volume = max(volume - 0.1, 0.0)
            print("Radio 볼륨 \(volume)으로 내림")
        }
    }
    func setVolume(percent: Float) {
        if percent < 0.0 || percent > 1.0 {
            print("잘못된 Radio 볼륨 값")
        } else {
            volume = percent
            print("Radio 볼륨 \(volume)으로 세팅")
        }
    }
}
