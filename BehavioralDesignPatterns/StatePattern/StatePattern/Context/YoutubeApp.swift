//
//  YoutubeApp.swift
//  StatePattern
//
//  Created by Jae kwon Choi on 2023/09/03.
//

import Foundation

// Context
class YoutubeApp {
    var youtubePremiumState: State
    
    init(subscribeState: State) {
        self.youtubePremiumState = subscribeState
    }
    
    func subscribe() {
        print("\n유튜브 프리미엄 구독 시작\n")
        self.youtubePremiumState = SubscribeState()
    }
    
    func unSubscribe() {
        print("유튜브 프리미엄 구독 해지\n")
        self.youtubePremiumState = UnSubscribeState()
    }
    
    func clickHomeButton() {
        self.youtubePremiumState.playBackground()
    }
    
    func clickAppIcon() {
        self.youtubePremiumState.playForeground()
    }
    
    func clickDownload() {
        self.youtubePremiumState.videoDownload()
    }
}
