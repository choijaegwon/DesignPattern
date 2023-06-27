//
//  BClass.swift
//  SingletonPattern
//
//  Created by Jae kwon Choi on 2023/06/27.
//

import Foundation

// B ViewController
// 각각 인스턴스가 생성되는 기존 방식
func bFunc() {
    let userInfo = UserInfo()
    userInfo.id = "Sodeul"
}

// 싱글톤패턴을 활용한 방식
func bSingletonFunc() {
    let userInfo = SingletonUserInfo.shared
    userInfo.password = "123"
}
