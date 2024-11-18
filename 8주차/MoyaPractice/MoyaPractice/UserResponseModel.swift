//
//  UserResponseModel.swift
//  MoyaPractice
//
//  Created by 이수현 on 11/17/24.
//

import Foundation

struct UserResponseModel: Codable {
    let id: Int
    let email: String
    let password: String
    let name: String
    let role: String
    let avatar: String
}
