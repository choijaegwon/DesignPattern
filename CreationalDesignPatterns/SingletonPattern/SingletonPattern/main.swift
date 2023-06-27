//
//  main.swift
//  SingletonPattern
//
//  Created by Jae kwon Choi on 2023/06/27.
//

import Foundation

/// 기존방식
class UserInfo {
    /// 이름
    var name: String?
    /// 아이디
    var id: String?
    /// 비밀번호
    var password: String?
}

/// 싱글톤 방식
class SingletonUserInfo {
    /// 프로퍼티 생성
    static let shared = SingletonUserInfo()
    
    /// 이름
    var name: String?
    /// 아이디
    var id: String?
    /// 비밀번호
    var password: String?
   
    /// 생성자 호출 막기
    private init() {}
}
