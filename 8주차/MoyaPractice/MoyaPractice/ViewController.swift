//
//  ViewController.swift
//  MoyaPractice
//
//  Created by 이수현 on 11/17/24.
//

import UIKit
import Moya

class ViewController: UIViewController {
    
    let provider = MoyaProvider<UserTargetType>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getUserInfo()
        postFile()
    }
    
    private func getUserInfo() {
        provider.request(.getAllUsers) { result in
            switch result {
            case.success(let response):
                do {
                    let userResponse = try response.map([UserResponseModel].self)
                    print(userResponse)
                } catch {
                    print(error.localizedDescription)
                }
            case.failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    private func postFile() {
        guard let image = Image(named: "루이로드레")?.pngData() else {
            fatalError("Invalid image")
        }
        
        provider.request(.postFile(image: image)) { result in
            switch result {
            case .success(let response):
                do {
                    let fileResponse = try response.map(FileResponseModel.self)
                    print(fileResponse)
                } catch {
                    print(error.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
    }
    
    
}

