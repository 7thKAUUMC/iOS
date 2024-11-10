//
//  SearchModel.swift
//  DaumAPI
//
//  Created by 이수현 on 11/10/24.
//

import Foundation

struct SearchModel: Codable {
    let documents: [DetailDocument]
}

struct DetailDocument: Codable {
    let contents: String
    let datetime: String
    let title: String
    let url: String
}
