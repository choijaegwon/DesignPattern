//
//  YoutubeVideo.swift
//  ProxyPattern
//
//  Created by Jae kwon Choi on 2023/09/03.
//

import Foundation

// Real Service
class YoutubeVideo: YoutubeVideoService {
    
    private var id: Int
    private var name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
    
    func showPreview() {
        print("\(name) Preview Play 😀\n")
    }
    
    func setName(name: String) {
        print("\(self.name)에서 \(name)으로 이름 수정 완료\n")
        self.name = name
    }
}
