//
//  ManageProfileView.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 10/18/24.
//

import UIKit
import SnapKit

class ManageProfileView: UIView {

    private let userImage: UIImageView = {
        let u = UIImageView()
        u.image = UIImage(named: "UserImage")
        u.hoverStyle?.shape = .circle
        return u
    }()
    
    private let profileInfo: UILabel = {
        let p = UILabel()
        p.text = "프로필 정보"
        p.textColor = .black
        p.font = .boldSystemFont(ofSize: 18)
        p.textAlignment = .left
        return p
    }()
    
    private let userEmail: UILabel = {
        let u = UILabel()
        u.text = "유저 이메일"
        u.textColor = .black
        u.font = .systemFont(ofSize: 14)
        u.textAlignment = .left
        return u
    }()
    
    private let emailTextField: UITextField = {
        let e = UITextField()
        e.placeholder = "새로운 이메일을 입력해주세요!"
        e.borderStyle = .roundedRect
        return e
    }()
    
    private let userPassword: UILabel = {
        let u = UILabel()
        u.text = "유저 비밀번호"
        u.textColor = .black
        u.font = .systemFont(ofSize: 14)
        u.textAlignment = .left
        return u
    }()
    
    private let passwordTextField: UITextField = {
        let p = UITextField()
        p.placeholder = "새로운 비밀번호를 입력해주세요!"
        p.borderStyle = .roundedRect
        return p
    }()
    
    private let emailButton: UIButton = {
        let e = UIButton()
        e.setTitle("변경", for: .normal)
        e.setTitleColor(UIColor.black, for: .normal)
        e.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        e.backgroundColor = .clear
        e.layer.cornerRadius = 6
        e.layer.borderWidth = 1
        e.layer.borderColor = UIColor.black.cgColor
        return e
    }()
    
    private let passwordButton: UIButton = {
        let e = UIButton()
        e.setTitle("변경", for: .normal)
        e.setTitleColor(.black, for: .normal)
        e.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        e.backgroundColor = .clear
        e.layer.cornerRadius = 6
        e.layer.borderWidth = 1
        e.layer.borderColor = UIColor.black.cgColor
        return e
    }()
    
    func setupUI() {
        addSubview(userImage)
        userImage.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(52)
            make.leading.equalToSuperview().offset(151)
            make.centerX.equalToSuperview()
        }
        
        addSubview(profileInfo)
        profileInfo.snp.makeConstraints { make in
            make.top.equalTo(userImage.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(27)
            make.centerX.equalToSuperview()
        }
        
        addSubview(userEmail)
        userEmail.snp.makeConstraints { make in
            make.top.equalTo(profileInfo.snp.bottom).offset(23)
            make.leading.equalTo(profileInfo.snp.leading)
        }
        
        addSubview(emailTextField)
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(userEmail.snp.bottom).offset(4)
            make.leading.equalTo(userEmail.snp.leading)
            make.width.equalTo(282)
            make.height.equalTo(32)
        }
        
        addSubview(emailButton)
        emailButton.snp.makeConstraints { make in
            make.top.equalTo(emailTextField)
            make.leading.equalTo(emailTextField.snp.trailing).offset(9)
            make.trailing.equalToSuperview().offset(-27)
            make.height.equalTo(32)
        }
        
        addSubview(userPassword)
        userPassword.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(23)
            make.leading.equalTo(emailTextField.snp.leading)
        }
        
        addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(userPassword.snp.bottom).offset(4)
            make.leading.equalTo(userPassword.snp.leading)
            make.width.equalTo(282)
            make.height.equalTo(32)
        }
        
        addSubview(passwordButton)
        passwordButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField)
            make.leading.equalTo(passwordTextField.snp.trailing).offset(9)
            make.trailing.equalToSuperview().offset(-27)
            make.height.equalTo(32)
        }
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        emailButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        passwordButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
    }
    
    @objc func buttonTapped(sender: UIButton) {
        if sender == emailButton {
            sender.setTitle("확인", for: .normal)
            emailTextField.text = ""
        } else {
            sender.setTitle("확인", for: .normal)
            passwordTextField.text = ""
        }
        
    }
    
    required init? (coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
