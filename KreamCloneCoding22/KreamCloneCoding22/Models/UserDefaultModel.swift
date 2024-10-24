//
//  UserDefaultModel.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 10/24/24.
//

import Foundation

class UserDefaultModel {
    private let userDefault = UserDefaults.standard
    
    private let userIdKey: String = "userID"
    private let userPwKey: String = "userPW"
    
    func setUserId(_ userId: String) {
        userDefault.set(userId, forKey: userIdKey)
    }
    
    func setUserPw(_ userPw: String) {
        userDefault.set(userPw, forKey: userPwKey)
    }
    
    func loadUserId() -> String? {
        return userDefault.string(forKey: userIdKey)
    }
    
}
