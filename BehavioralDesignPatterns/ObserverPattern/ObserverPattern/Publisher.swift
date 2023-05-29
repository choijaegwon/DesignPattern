//
//  Publisher.swift
//  ObserverPattern
//
//  Created by Jae kwon Choi on 2023/05/29.
//
import Foundation

protocol Publisher {
    /// 옵저버
    var observers: [Observer] { get set }
    /// 옵저버 추가
    func subscribe(observer: Observer)
    /// 옵저버 제거
    func unSubscribe(observer: Observer)
    /// 알림
    func notify(message: String)
}
