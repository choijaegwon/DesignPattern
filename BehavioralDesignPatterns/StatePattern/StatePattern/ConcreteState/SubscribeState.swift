//
//  SubscribeState.swift
//  StatePattern
//
//  Created by Jae kwon Choi on 2023/09/03.
//

import Foundation

// Concrete State
class SubscribeState: State {
    func playBackground() {
        print("결제를 해서 백그라운드에서도 재생중")
    }
    func playForeground() {
        print("영상 재생 중")
    }
    func videoDownload() {
        print("결제를 해서 비디오 다운로드 가능")
    }
}
