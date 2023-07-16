//
//  NaverLoginService.swift
//  AdapterPattern
//
//  Created by Jae kwon Choi on 2023/07/16.
//

import Foundation

/// 네이버 계정
struct NaverAccount {
    /// 이메일
    var email: String
    /// 비밀번호
    var password: String
    /// 네이버 토큰
    var naverToken: String
}

class NaverAccountLogin {
    /// 네이버 로그인
    func login(email: String,
               password: String,
               completion: @escaping(NaverAccount?, LoginError?) -> Void) {
        if !email.hasSuffix("naver.com") {
            completion(nil, LoginError(errorMessage: "email 에러"))
            return
        }
        let token = "아무도 모르는 Naver 비밀 토큰"
        let user = NaverAccount(email: email, password: password, naverToken: token)
        completion(user, nil)
    }
}
