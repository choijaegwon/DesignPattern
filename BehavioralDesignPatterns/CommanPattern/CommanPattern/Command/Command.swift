//
//  Command.swift
//  CommanPattern
//
//  Created by Jae kwon Choi on 2023/07/02.
//

import Foundation
import SwiftUI

/// command
protocol Command {
    var receiver: TextEditor { get set }
    var backup: String { get set }
    
    /// 실행하기
    func execute()
    /// 취소하기
    func undo()
}
