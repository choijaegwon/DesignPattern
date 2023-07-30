//
//  Component.swift
//  CompositePatterns
//
//  Created by Jae kwon Choi on 2023/07/30.
//

import Foundation

/// Component
protocol FileComponent {
    var size: Int { get set }
    var name: String { get set }
    func open()
    func getSize() -> Int
}
