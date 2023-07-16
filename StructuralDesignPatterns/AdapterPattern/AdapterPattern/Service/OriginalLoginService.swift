//
//  OriginalLoginService.swift
//  AdapterPattern
//
//  Created by Jae kwon Choi on 2023/07/16.
//

import Foundation

// 기존 로그인 서비스 프로토콜
protocol LoginService {
    /// 로그인
    func login(
        email: String,
        password: String,
        success: @escaping (User?, Token?) -> Void,
        failure: @escaping (LoginError?) -> Void
    )
}

struct User {
    /// 이메일
    let email: String
    /// 비밀번호
    let password: String
}

struct Token {
    let value: String
}

struct LoginError: Error {
    var errorMessage: String
}

class NormalLogin: LoginService {
    func login(
        email: String,
        password: String,
        success: @escaping (User?, Token?) -> Void,
        failure: @escaping (LoginError?) -> Void
    ) {
        if !email.hasSuffix("normal.com") {
            failure(LoginError(errorMessage: "email 에러"))
            return
        }
        let token = Token(value: "아무도 모르는 Normal 비밀 토큰")
        let user = User(email: email, password: password)
        success(user, token)
    }
}
