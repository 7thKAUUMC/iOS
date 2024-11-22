//
//  JustDroppedModel.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 11/3/24.
//

import Foundation
import UIKit

struct JustDroppedModel {
    //let image: UIImage
    let image: String
    let brandName: String
    let productName: String
    let price: String
}

extension JustDroppedModel {
    static func dummy() -> [JustDroppedModel] {
        return [
            JustDroppedModel(image: "https://static.nike.com/a/images/t_PDP_936_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/24750e81-85ed-4b0e-8cd8-becf0cd97b2f/WMNS+AIR+JORDAN+1+MID.png", brandName: "MLB", productName: "청키라이너 뉴욕 양키스", price: "139,000원"),
            JustDroppedModel(image: "https://image.sivillage.com/upload/C00001/goods/org/105/230117003866105.jpg?RS=750&SP=1", brandName: "Jordan", productName: "청키라이너 뉴욕 양키스", price: "228,000원"),
            JustDroppedModel(image: "https://sitem.ssgcdn.com/77/13/79/item/1000575791377_i1_750.jpg", brandName: "Human Made", productName: "청키라이너 뉴욕 양키스", price: "139,000원"),
            JustDroppedModel(image: "https://sitem.ssgcdn.com/77/13/79/item/1000575791377_i1_750.jpg", brandName: "Human Made", productName: "청키라이너 뉴욕 양키스", price: "139,000원"),
            JustDroppedModel(image: "https://sitem.ssgcdn.com/77/13/79/item/1000575791377_i1_750.jpg", brandName: "Human Made", productName: "청키라이너 뉴욕 양키스", price: "139,000원"),
            JustDroppedModel(image: "https://sitem.ssgcdn.com/77/13/79/item/1000575791377_i1_750.jpg", brandName: "Human Made", productName: "청키라이너 뉴욕 양키스", price: "139,000원"),
            JustDroppedModel(image: "https://sitem.ssgcdn.com/77/13/79/item/1000575791377_i1_750.jpg", brandName: "Human Made", productName: "청키라이너 뉴욕 양키스", price: "139,000원"),
            JustDroppedModel(image: "https://sitem.ssgcdn.com/77/13/79/item/1000575791377_i1_750.jpg", brandName: "Human Made", productName: "청키라이너 뉴욕 양키스", price: "139,000원"),
            JustDroppedModel(image: "https://sitem.ssgcdn.com/77/13/79/item/1000575791377_i1_750.jpg", brandName: "Human Made", productName: "청키라이너 뉴욕 양키스", price: "139,000원"),
            JustDroppedModel(image: "https://sitem.ssgcdn.com/77/13/79/item/1000575791377_i1_750.jpg", brandName: "Human Made", productName: "청키라이너 뉴욕 양키스", price: "139,000원"),
            JustDroppedModel(image: "https://sitem.ssgcdn.com/77/13/79/item/1000575791377_i1_750.jpg", brandName: "Human Made", productName: "청키라이너 뉴욕 양키스", price: "139,000원"),
            JustDroppedModel(image: "https://sitem.ssgcdn.com/77/13/79/item/1000575791377_i1_750.jpg", brandName: "Human Made", productName: "청키라이너 뉴욕 양키스", price: "139,000원")
        ]
    }
}
