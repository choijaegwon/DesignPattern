//
//  AvailableProduct.swift
//  FacadePattern
//
//  Created by Jae kwon Choi on 2023/07/16.
//

import Foundation

// 재고 관리
class AvailableProduct {
    var productList: [Product: Int] = [:]
    
    init(productList: [Product: Int]) {
        self.productList = productList
    }
}
