//
//  main.swift
//  StatePattern
//
//  Created by Jae kwon Choi on 2023/09/03.
//

import Foundation

let youtubeApp = YoutubeApp(subscribeState: UnSubscribeState())

youtubeApp.clickAppIcon()
youtubeApp.clickHomeButton()
youtubeApp.clickDownload()

youtubeApp.subscribe()

youtubeApp.clickAppIcon()
youtubeApp.clickHomeButton()
youtubeApp.clickDownload()
