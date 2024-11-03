//
//  HomeDataModel.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 11/1/24.
//

import UIKit


struct HomeDataModel {
    let text: String
    let image: UIImage
}

extension HomeDataModel {
    static func dummy() -> [HomeDataModel] {
        return [
            HomeDataModel(text: "크림 드로우", image: .shoe),
            HomeDataModel(text: "실시간 차트", image: .shoe),
            HomeDataModel(text: "남성 추천", image: .shoe),
            HomeDataModel(text: "여성 추천", image: .shoe),
            HomeDataModel(text: "색다른 추천", image: .shoe),
            HomeDataModel(text: "정가 아래", image: .shoe),
            HomeDataModel(text: "윤세 24AW", image: .shoe),
            HomeDataModel(text: "올해의 베스트", image: .shoe),
            HomeDataModel(text: "10월 베네핏", image: .shoe),
            HomeDataModel(text: "아크네 선물", image: .shoe),
            
            ]
    }
}
