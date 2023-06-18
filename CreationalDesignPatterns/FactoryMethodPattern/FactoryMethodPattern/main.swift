//
//  main.swift
//  FactoryMethodPattern
//
//  Created by Jae kwon Choi on 2023/06/18.
//

import Foundation

let factory = PlayerFactory()
let musicPlayer = factory.createPlayer(content: "BGM", contentType: .music)
let videoPlayer = factory.createPlayer(content: "Video", contentType: .video)

musicPlayer.play()
musicPlayer.changeContent(name: "노래 바꾸기")

videoPlayer.play()
videoPlayer.changeContent(name: "비디오 바꾸기")
