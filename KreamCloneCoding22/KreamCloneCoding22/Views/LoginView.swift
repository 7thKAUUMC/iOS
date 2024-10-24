//
//  LoginView.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 10/18/24.
//

import UIKit
import SnapKit

class LoginView: UIView {

    private let kreamImage: UIImageView = {
        let k = UIImageView()
        k.image = UIImage(named: "KreamImage")
        k.contentMode = .scaleAspectFit
        return k
    }()
    
    private let emailLabel: UILabel = {
        let e = UILabel()
        e.text = "이메일 주소"
        e.textColor = .black
        e.font = UIFont.boldSystemFont(ofSize: 12)
        e.textAlignment = .left
        return e
    }()
    
    let emailTextField: UITextField = {
        let e = UITextField()
        e.placeholder = "예) kream@kream.co.kr"
        e.borderStyle = .roundedRect
        e.font = .systemFont(ofSize: 12)
        return e
    }()
    
    private let passwordLabel: UILabel = {
        let p = UILabel()
        p.text = "비밀번호"
        p.textColor = .black
        p.font = UIFont.boldSystemFont(ofSize: 12)
        p.textAlignment = .left
        return p
    }()
    
    let passwordTextField: UITextField = {
        let p = UITextField()
        p.placeholder = "비밀번호를 입력해주세요"
        p.borderStyle = .roundedRect
        p.font = .systemFont(ofSize: 12)
        return p
    }()
    
    let loginButton: UIButton = {
        let l = UIButton()
        l.setTitle("로그인", for: .normal)
        l.setTitleColor(.white, for: .normal)
        l.backgroundColor = .lightGray
        l.layer.cornerRadius = 8
        l.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return l
    }()
    
    private let kakaoButton: UIButton = {
        let k = UIButton()
        k.setTitle("카카오로 로그인", for: .normal)
        k.setTitleColor(.black, for: .normal)
        k.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        k.layer.cornerRadius = 8
        k.layer.borderWidth = 1
        k.layer.borderColor = UIColor.lightGray.cgColor
        return k
    }()
    
    private let appleButton: UIButton = {
        let a = UIButton()
        a.setTitle("Apple로 로그인", for: .normal)
        a.setTitleColor(.black, for: .normal)
        a.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        a.layer.cornerRadius = 8
        a.layer.borderWidth = 1
        a.layer.borderColor = UIColor.lightGray.cgColor
        return a
    }()
    
    func setupUI() {
        addSubview(kreamImage)
        kreamImage.snp.makeConstraints { make in
            make.top.equalTo(126)
            make.centerX.equalToSuperview()
            make.leading.equalToSuperview().offset(53)
        }
        
        addSubview(emailLabel)
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(kreamImage.snp.top).offset(87)
            make.centerX.equalToSuperview()
            make.leading.equalToSuperview().offset(45)
        }
        
        addSubview(emailTextField)
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(8)
            make.leading.trailing.equalTo(emailLabel)
            make.height.equalTo(34)
        }
        
        addSubview(passwordLabel)
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(17)
            make.leading.trailing.equalTo(emailTextField)
        }
        
        addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(8)
            make.leading.trailing.equalTo(passwordLabel)
            make.height.equalTo(34)
        }
        
        addSubview(loginButton)
        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(17)
            make.leading.trailing.equalTo(passwordTextField)
            make.height.equalTo(38)
        }
        
        addSubview(kakaoButton)
        kakaoButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(87)
            make.leading.trailing.equalTo(loginButton)
            make.height.equalTo(40)
        }
        
        addSubview(appleButton)
        appleButton.snp.makeConstraints { make in
            make.top.equalTo(kakaoButton.snp.bottom).offset(22)
            make.leading.trailing.equalTo(kakaoButton)
            make.height.equalTo(40)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
