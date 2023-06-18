//
//  WindowViewFactory.swift
//  AbstractFactoryPattern
//
//  Created by Jae kwon Choi on 2023/06/18.
//

import Foundation
/// ConcreteProduct
class WindowViewFactory: ViewAbstractFactory {
    func createButton() -> Button {
        return WindowButton()
    }
    
    func createLabel() -> Label {
        return WindowLabel(text: "Window Label")
    }
}

class WindowButton: Button {
    func click() {
        print("Window Button Click!")
    }
}

class WindowLabel: Label {
    var text: String
    init(text: String) {
        self.text = text
    }
}
