//
//  RecommendedSearchModel.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 11/17/24.
//

import Foundation

struct RecommendedSearchModel {
    let text: String
}

extension RecommendedSearchModel {
    static func dummy() -> [RecommendedSearchModel] {
        return [
            RecommendedSearchModel(text: "채원 슈프림 후리스"),
            RecommendedSearchModel(text: "나이키V2런"),
            RecommendedSearchModel(text: "뉴발란스996"),
            RecommendedSearchModel(text: "신상 나이키 콜라보"),
            RecommendedSearchModel(text: "허그 FW 패딩"),
            RecommendedSearchModel(text: "벨루어 눕시")
        ]
    }
}
