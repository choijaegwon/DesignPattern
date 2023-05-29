//
//  RouteModel.swift
//  StrategyPattern
//
//  Created by Jae kwon Choi on 2023/05/29.
//

import Foundation

struct RouteModel: Identifiable {
    var id: UUID { UUID() }
    var text: String
    var route: RouteStrategy
}
