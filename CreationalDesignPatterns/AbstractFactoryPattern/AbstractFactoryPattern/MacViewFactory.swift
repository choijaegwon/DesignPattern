//
//  Mac.swift
//  AbstractFactoryPattern
//
//  Created by Jae kwon Choi on 2023/06/18.
//

import Foundation
/// ConcreteProduct
class MacViewFactory: ViewAbstractFactory {
    func createButton() -> Button {
        return MacButton()
    }
    
    func createLabel() -> Label {
        return MacLabel(text: "Mac Label")
    }
}

class MacButton: Button {
    func click() {
        print("Mac Button Click!")
    }
}

class MacLabel: Label {
    var text: String
    init(text: String) {
        self.text = text
    }
}
