//
//  TeenipingModel.swift
//  Week4_Practice
//
//  Created by 이수현 on 11/1/24.
//

import UIKit

struct TeenipingModel {
    let image: UIImage
    let name: String
}

extension TeenipingModel {
    static func dummy() -> [TeenipingModel] {
        return [
            TeenipingModel(image: .teeniping, name: "티니핑"),
            TeenipingModel(image: .teeniping, name: "티니핑"),
            TeenipingModel(image: .teeniping, name: "티니핑"),
            TeenipingModel(image: .teeniping, name: "티니핑"),
            TeenipingModel(image: .teeniping, name: "티니핑"),
            TeenipingModel(image: .teeniping, name: "티니핑"),
            TeenipingModel(image: .teeniping, name: "티니핑"),
            TeenipingModel(image: .teeniping, name: "티니핑")
        ]
    }
}
