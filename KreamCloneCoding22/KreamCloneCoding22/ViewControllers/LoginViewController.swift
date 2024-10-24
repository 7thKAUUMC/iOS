//
//  ViewController.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 10/18/24.
//

import UIKit

class LoginViewController: UIViewController {

    let loginView = LoginView()
    let userDefaultModel = UserDefaultModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .clear
        view = loginView
        
        loginView.loginButton.addTarget(self, action: #selector (loginButtonTapped), for: .touchUpInside)
    }

    @objc func loginButtonTapped() {
        userDefaultModel.setUserId(loginView.emailTextField.text ?? "")
        userDefaultModel.setUserPw(loginView.passwordTextField.text ?? "")
        
        let nextVC = MainViewController()
        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true, completion: nil)
    }
    
}

