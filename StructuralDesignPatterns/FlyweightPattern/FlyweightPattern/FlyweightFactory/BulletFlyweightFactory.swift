//
//  BulletFlyweightFactory.swift
//  FlyweightPattern
//
//  Created by Jae kwon Choi on 2023/09/05.
//

import Foundation

// Flyweight Factory
class BulletFlyweightFactory {
    static private var bulletFlyweightList: [BulletFlyweight] = []
    
    static func getBulletFlyweight(color: String, size: Float) -> BulletFlyweight {
        if let flyweightIndex = self.bulletFlyweightList.firstIndex(where: { (bullet) -> Bool in
            return bullet.color == color && bullet.size == size
        }) {
            return self.bulletFlyweightList[flyweightIndex]
        } else {
            self.bulletFlyweightList.append(BulletFlyweight(color: color, size: size))
            print("\(color),\(size) Flyweight 객체 생성")
            return self.bulletFlyweightList.last ?? BulletFlyweight(color: color, size: size)
        }
    }
    
    static var flyweightCount: Int {
        return self.bulletFlyweightList.count
    }
    
    private init() {}
}
