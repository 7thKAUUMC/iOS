//
//  ViewController.swift
//  AFPractice
//
//  Created by 이수현 on 11/10/24.
//

import UIKit
import SnapKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        // apiGet()
        apiPost()
    }

    private lazy var aflabel: UILabel = {
        let a = UILabel()
        a.textColor = .black
        a.textAlignment = .center
        a.font = .systemFont(ofSize: 20)
        a.numberOfLines = 0
        return a
    }()
    
    func setupUI() {
        view.addSubview(aflabel)
        aflabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
    
    
    func apiGet() {
        AF.request("https://jsonplaceholder.typicode.com/todos/1").responseString { response in // 기본 메서드 = get , responseString: 응답을 문자열 처리
            switch response.result {
            case .success(let response):
                self.aflabel.text = response
                print(response)
            case .failure(let error):
                self.aflabel.text = "Error: \(error)"
            
            }
        }
    }
    
    let params: [String: Any] = [
        "title": "Hello, World!",
        "body": "This is a test message.",
        "userId": 123
    ]
    
    func apiPost() {
        AF.request("https://jsonplaceholder.typicode.com/posts", method: .post, parameters: params, encoding: JSONEncoding.default).responseString { response in
            switch response.result {
                case .success(let response):
                self.aflabel.text = response
                print(response)
            case .failure(let error):
                self.aflabel.text = "Error: \(error)"
            }
        }
    }

}

