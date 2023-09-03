//
//  main.swift
//  BridgePattern
//
//  Created by Jae kwon Choi on 2023/09/03.
//

import Foundation

let tv = TvSoundButton()
let soundButton = SoundButton(implementor: tv)
soundButton.down()

let radio = RadioSoundButton()
soundButton.soundButtonImplementor = radio
soundButton.set(percent: 0.5)

soundButton.mute()
