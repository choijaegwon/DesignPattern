//
//  Bullet.swift
//  FlyweightPattern
//
//  Created by Jae kwon Choi on 2023/09/05.
//

import Foundation

// Unshared Concrete Flyweight
class Bullet {
    var x: Float
    var y: Float
    var velocity: Float
    
    private var extrinsicState: BulletFlyweight
    
    init(x: Float, y: Float, velocity: Float, extrinsicState: BulletFlyweight) {
        self.x = x
        self.y = y
        self.velocity = velocity
        self.extrinsicState = extrinsicState
    }
    func getState() {
        print("Flyweight : \(x),\(y),\(velocity) 값을 갖는 \(extrinsicState.color), \(extrinsicState.size) 총알")
    }
}
