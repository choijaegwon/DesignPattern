//
//  KakaoMapNavigation.swift
//  StrategyPattern
//
//  Created by Jae kwon Choi on 2023/05/29.
//

import SwiftUI

class KakaoMapNavigation: ObservableObject {
    private var route: RouteStrategy
    
    var model: [RouteModel] = [
        RouteModel(text: "CarRoute", route: CarRoute()),
        RouteModel(text: "BusRoute", route: BusRoute()),
        RouteModel(text: "WalkRoute", route: WalkRoute())
    ]
    
    init() {
        self.route = CarRoute()
    }
    
    /// 실행하기
    func exectue() {
        self.route.findRoute()
    }
    
    /// 전략 입력
    func setStrategy(_ strategy: RouteStrategy) {
        self.route = strategy
        self.route.findRoute()
    }
}

