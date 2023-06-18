//
//  ViewAbstractFactory.swift
//  AbstractFactoryPattern
//
//  Created by Jae kwon Choi on 2023/06/18.
//

import Foundation

/// AbstractFactory
protocol ViewAbstractFactory {
    /// 버튼 생성
    func createButton() -> Button
    /// 텍스트 생성
    func createLabel() -> Label
}

/// ConcreteFactory
protocol Button {
    /// 클릭
    func click()
}

/// ConcreteFactory
protocol Label {
    var text: String { get set }
}
