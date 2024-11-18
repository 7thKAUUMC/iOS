//
//  ViewController.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 10/18/24.
//

import UIKit
import KakaoSDKAuth
import KakaoSDKUser
import Alamofire

class LoginViewController: UIViewController {
    
    let loginView = LoginView()
    let userDefaultModel = UserDefaultModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        view = loginView
        
        loginView.loginButton.addTarget(self, action: #selector (loginButtonTapped), for: .touchUpInside)
        loginView.kakaoButton.addTarget(self, action: #selector (kakaoButtonTapped), for: .touchUpInside)
    }
    
    @objc func loginButtonTapped() {
        userDefaultModel.setUserId(loginView.emailTextField.text ?? "")
        userDefaultModel.setUserPw(loginView.passwordTextField.text ?? "")
        
        let nextVC = MainViewController()
        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true, completion: nil)
    }
    
    @objc func kakaoButtonTapped() {
        // 조건문으로 카카오톡이 설치되어 있는지 확인
        if UserApi.isKakaoTalkLoginAvailable() {
            // 카카오톡 앱으로 로그인, 근데 시뮬레이터에 없어서 무조건 else로 갈거임
            UserApi.shared.loginWithKakaoTalk { (oauthToken, error) in
                if let error = error {
                    print("카카오톡 로그인 실패: \(error)")
                } else if let oauthToken = oauthToken {
                    print("카카오톡 로그인 성공, 토큰: \(oauthToken.accessToken)")
                    self.fetchUserData(accessToken: oauthToken.accessToken)
                }
            }
        } else {
            // 카카오 계정으로 로그인
            UserApi.shared.loginWithKakaoAccount { (oauthToken, error) in
                if let error = error {
                    print("카카오 계정 로그인 실패: \(error)")
                } else if let oauthToken = oauthToken {
                    print("카카오 계정 로그인 성공, 토큰: \(oauthToken.accessToken)")
                    self.fetchUserData(accessToken: oauthToken.accessToken)
                }
            }
        }
    }
    
    func fetchUserData(accessToken: String) {
        // get 하기 위한 리소스 url
        let url = "https://kapi.kakao.com/v2/user/me"
        let headers: HTTPHeaders = [
            "Authorization": "Bearer \(accessToken)"
        ]
        
        AF.request(url, method: .get, headers: headers).responseJSON { response in
            switch response.result {
            case .success(let data):
                print("사용자 정보 가져오기 성공: \(data)")
                let nextVC = MainViewController()
                nextVC.modalPresentationStyle = .fullScreen
                self.present(nextVC, animated: true, completion: nil)
            case .failure(let error):
                print("사용자 정보 가져오기 실패: \(error)")
            }
        }
    }
}

