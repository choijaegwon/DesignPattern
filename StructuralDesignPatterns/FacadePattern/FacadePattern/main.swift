//
//  main.swift
//  FacadePattern
//
//  Created by Jae kwon Choi on 2023/07/16.
//

import Foundation

let macBook = Product(identifier: "product-01", name: "MacBook", cost: 2000000)
let iPad = Product(identifier: "product-02", name: "iPad", cost: 1200000)
let iPhone = Product(identifier: "product-03", name: "iPhone", cost: 1000000)

let productDB = AvailableProduct(productList: [macBook: 4, iPad: 3, iPhone: 1])

let jaegwon = Customer(identifier: "customer-01", name: "jaegwon", address: "남극 이글루")
let ick = Customer(identifier: "customer-02", name: "Ick", address: "한국 서울")

let orderFacade = OrderFacade(productDB: productDB, orderDB: OrderList())

orderFacade.order(product: iPhone, customer: jaegwon)
orderFacade.order(product: iPhone, customer: jaegwon)
