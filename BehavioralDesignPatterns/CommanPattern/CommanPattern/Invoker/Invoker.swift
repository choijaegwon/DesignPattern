//
//  Invoker.swift
//  CommanPattern
//
//  Created by Jae kwon Choi on 2023/07/02.
//

import Foundation

/// Invoker
class Invoker {
    var history: [Command] = []

    private func push(commnd: Command) {
        self.history.append(commnd)
    }
    
    private func pop() -> Command? {
        return history.popLast()
    }
    
    func executeCommand(command: Command) {
        command.execute()
        self.push(commnd: command)
    }
    
    func undoCommand() {
        let command = self.pop()
        if command == nil {
            print("되돌릴 작업이 없습니다.")
        } else {
            command?.undo()
        }
    }
}
