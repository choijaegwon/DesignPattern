//
//  BulletFlyweight.swift
//  FlyweightPattern
//
//  Created by Jae kwon Choi on 2023/09/05.
//

import Foundation

// Flyweight
class BulletFlyweight {
    let color: String
    let size: Float
    
    init(color: String, size: Float) {
        self.color = color
        self.size = size
    }
}
