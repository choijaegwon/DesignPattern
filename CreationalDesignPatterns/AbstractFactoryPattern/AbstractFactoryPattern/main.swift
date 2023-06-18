//
//  Main.swift
//  AbstractFactoryPattern
//
//  Created by Jae kwon Choi on 2023/06/18.
//

import Foundation
/// Client
let factory = MacViewFactory()
let button = factory.createButton()
let label = factory.createLabel()
