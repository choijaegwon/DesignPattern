//
//  AppleStroe.swift
//  ObserverPattern
//
//  Created by Jae kwon Choi on 2023/05/29.
//

import Foundation

class AppleStore: Publisher {
    var observers: [Observer]
    
    init(observers: [Observer]) {
        self.observers = observers
    }
    
    func subscribe(observer: Observer) {
        self.observers.append(observer)
    }
    
    func unSubscribe(observer: Observer) {
        if let index = self.observers.firstIndex(where: { $0.id == observer.id }) {
            self.observers.remove(at: index)
        }
    }
    
    func notify(message: String) {
        for observer in observers {
            observer.update(message: message)
        }
    }
}
