//
//  NotifierDecorator.swift
//  DecoratorPattern
//
//  Created by Jae kwon Choi on 2023/06/17.
//

import Foundation
/// Decorator
protocol NotifierDecorator: NotifierComponent {
    var wrappee: NotifierComponent { get set }
    init(notifier: NotifierComponent)
}
