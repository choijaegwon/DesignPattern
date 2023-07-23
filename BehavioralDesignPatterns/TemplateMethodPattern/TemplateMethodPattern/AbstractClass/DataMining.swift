//
//  DataMining.swift
//  TemplateMethodPattern
//
//  Created by Jae kwon Choi on 2023/07/23.
//

/// Abstract Class
class DataMining {
    // Template Method
    final func dataMining() {
        getData()
        dataProcess()
        dataAnalysis()
    }
    
    func getData() {
        print("데이터를 불러옵니다.")
    }
    func dataProcess() {
        print("데이터 처리완료")
    }
    func dataAnalysis() {
        print("데이터 분석완료\n")
    }
}
