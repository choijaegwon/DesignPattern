//
//  WriteCommand.swift
//  CommanPattern
//
//  Created by Jae kwon Choi on 2023/07/02.
//

import Foundation

/// Concrete Command
class WriteCommand: Command {
    var receiver: TextEditor
    var backup: String
    
    init(receiver: TextEditor, backup: String) {
        self.receiver = receiver
        self.backup = backup
    }
   
    func undo() {
        let startIndex = receiver.text.startIndex
        let lastIndex = receiver.text.index(startIndex, offsetBy: receiver.text.count - backup.count)
        receiver.text = String(receiver.text[startIndex..<lastIndex])
    }
    
    func execute() {
        receiver.text += backup
    }
}
