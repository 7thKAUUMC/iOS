//
//  UserResponseModel.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 11/18/24.
//

import Foundation
import UIKit

struct UserResponseModel: Decodable {
    let products: [Product]
}

struct Product: Decodable {
    let id: Int
    let title: String
    let description: String
    let category: String
    let price: Double
    let discountPercentage: Double
    let rating: Double
    let stock: Int
    let tags: [String]
    let brand: String
}
