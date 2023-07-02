//
//  CopyCommand.swift
//  CommanPattern
//
//  Created by Jae kwon Choi on 2023/07/02.
//

import Foundation

/// Concrete Command
class CopyCommand: Command {
    var receiver: TextEditor
    var backup: String = ""
    
    init(receiver: TextEditor) {
        self.receiver = receiver
    }
    
    func undo() {
        receiver.clipboard = self.backup
        self.backup = ""
    }
    
    func execute() {
        self.backup = receiver.clipboard
        receiver.clipboard = receiver.text
    }
}
