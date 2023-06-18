//
//  LinuxViewFactory.swift
//  AbstractFactoryPattern
//
//  Created by Jae kwon Choi on 2023/06/18.
//

import Foundation
/// ConcreteProduct
class LinuxViewFactory: ViewAbstractFactory {
    func createButton() -> Button {
        return LinuxButton()
    }
    func createLabel() -> Label {
        return LinuxLabel(text: "Linux Label")
    }
}

class LinuxButton: Button {
    func click() {
        print("Linux Button Click")
    }
}

class LinuxLabel: Label {
    var text: String
    init(text: String) {
        self.text = text
    }
}
