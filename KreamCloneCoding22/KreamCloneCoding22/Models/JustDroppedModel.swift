//
//  JustDroppedModel.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 11/3/24.
//

import Foundation
import UIKit

struct JustDroppedModel {
    let image: UIImage
    let brandName: String
    let productName: String
    let price: String
}

extension JustDroppedModel {
    static func dummy() -> [JustDroppedModel] {
        return [
            JustDroppedModel(image: .dropped1, brandName: "MLB", productName: "청키라이너 뉴욕 양키스", price: "139,000원"),
            JustDroppedModel(image: .dropped2, brandName: "Jordan", productName: "청키라이너 뉴욕 양키스", price: "228,000원"),
            JustDroppedModel(image: .dropped2, brandName: "Human Made", productName: "청키라이너 뉴욕 양키스", price: "139,000원")
        ]
    }
}
