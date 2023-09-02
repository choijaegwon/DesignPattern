//
//  State.swift
//  StatePattern
//
//  Created by Jae kwon Choi on 2023/09/03.
//

import Foundation

// State Interface
protocol State {
    func playBackground()
    func playForeground()
    func videoDownload()
}
