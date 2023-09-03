//
//  HamburgerBuilder.swift
//  BuilderPattern
//
//  Created by Jae kwon Choi on 2023/09/04.
//

import Foundation

public class HamburgerBuilder {
    public private(set) var meat: Meat = .beef
    public private(set) var sauces: Set<Sauce> = []
    public private(set) var vegetables: Set<Vegetable> = []
    public private(set) var bread: Bread = .brownBread
    
    public func addSauce(_ sauce: Sauce) {
        sauces.insert(sauce)
    }
    public func removeSauce(_ sauce: Sauce) {
        sauces.remove(sauce)
    }
    public func addVegetable(_ vegetable: Vegetable) {
        vegetables.insert(vegetable)
    }
    public func removeVegetable(_ vegetable: Vegetable) {
        vegetables.remove(vegetable)
    }
    public func setMeat(_ meat: Meat) {
        self.meat = meat
    }
    public func setBread(_ bread: Bread) {
        self.bread = bread
    }
    
    public func build() -> Hamburger {
        return Hamburger(meat: meat, sauce: sauces, vegetable: vegetables, bread: bread)
    }
}
