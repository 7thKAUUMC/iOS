//
//  ProductDifferentColorModel.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 11/3/24.
//

import Foundation
import UIKit

struct ProductDifferentColorModel {
    let image: UIImage
}

extension ProductDifferentColorModel {
    static func dummy() -> [ProductDifferentColorModel] {
        return [
            ProductDifferentColorModel(image: .rectangle1),
            ProductDifferentColorModel(image: .rectangle2),
            ProductDifferentColorModel(image: .rectangle3),
            ProductDifferentColorModel(image: .rectangle4),
            ProductDifferentColorModel(image: .rectangle5),
            ProductDifferentColorModel(image: .rectangle6),
            ProductDifferentColorModel(image: .rectangle6),
            ProductDifferentColorModel(image: .rectangle6),
            ProductDifferentColorModel(image: .rectangle6),
            ProductDifferentColorModel(image: .rectangle6)
            ]
    }
}
