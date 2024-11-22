//
//  UserTargetTypeModel.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 11/18/24.
//

import Foundation
import Moya

enum UserTargetTypeModel {
    case getData(param: String)
}

extension UserTargetTypeModel: TargetType {
    var baseURL: URL {
        guard let baseURL = URL(string: "https://dummyjson.com") else {
            fatalError("ERROR: INVALID URL")
        }
        return baseURL
    }
    
    var path: String {
        switch self {
        case .getData:
            return "/products/search"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getData:
            return .get
        }
    }
    
    var task: Moya.Task {
        switch self {
        case .getData(let param):
            return .requestParameters(parameters: ["q": param], encoding: URLEncoding.queryString)
        }
    }
    
    var headers: [String : String]? {
        return [
            "Content-type": "application/json"
        ]
    }
    
    
}
