//
//  AClass.swift
//  SingletonPattern
//
//  Created by Jae kwon Choi on 2023/06/27.
//

import Foundation

// A ViewController
// 각각 인스턴스가 생성되는 기존 방식
func aFunc() {
    let userInfo = UserInfo()
    userInfo.id = "Sodeul"
}

// 싱글톤패턴을 활용한 방식
func aSingletonFunc() {
    let userInfo = SingletonUserInfo.shared
    userInfo.id = "Sodeul"
}
