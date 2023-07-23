//
//  main.swift
//  TemplateMethodPattern
//
//  Created by Jae kwon Choi on 2023/07/23.
//

enum FileType {
    case pdf
    case word
    case excel
}

class Client {
    static func dataMining(fileType: FileType) {
        switch fileType {
        case .pdf:
            PDFFileDataMining().dataMining()
        case .word:
            WordFileDataMining().dataMining()
        case .excel:
            ExcelFileDataMining().dataMining()
        }
    }
}

Client.dataMining(fileType: .pdf)
Client.dataMining(fileType: .word)
Client.dataMining(fileType: .excel)
