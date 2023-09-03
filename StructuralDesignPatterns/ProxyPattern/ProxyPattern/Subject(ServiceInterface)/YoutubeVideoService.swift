//
//  YoutubeVideoService.swift
//  ProxyPattern
//
//  Created by Jae kwon Choi on 2023/09/03.
//

import Foundation

// Subject (Service Interface)
protocol YoutubeVideoService {
    func showPreview()
    func setName(name: String)
}
