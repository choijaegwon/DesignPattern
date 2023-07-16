//
//  KakaoLoginService.swift
//  AdapterPattern
//
//  Created by Jae kwon Choi on 2023/07/16.
//

import Foundation

/// 카카오 계정
struct KakaoAccount {
    /// 이메일
    var email: String
    /// 비밀번호
    var password: String
    /// 카카오톡 토큰
    var kakaoToken: String
}

class KakaoAccountLogin {
    /// 카카오톡 로그인
    func login(
        email: String,
        password: String,
        completion: @escaping (KakaoAccount?, LoginError?) -> Void
    ) {
        if !email.hasSuffix("kakao.com") {
            completion(nil, LoginError(errorMessage: "email 에러"))
            return
        }
        let token = "아무도 모르는 Kakao 비밀 토큰"
        let user = KakaoAccount(email: email, password: password, kakaoToken: token)
        completion(user, nil)
    }
}
