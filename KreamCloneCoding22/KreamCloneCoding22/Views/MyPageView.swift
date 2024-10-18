//
//  MyPageView.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 10/18/24.
//

import UIKit

class MyPageView: UIView {

    private let optionButton: UIButton = {
        let b = UIButton()
        b.setImage(UIImage(systemName: "gearshape"), for: .normal)
        b.tintColor = .black
        return b
    }()
    
    private let cameraButton: UIButton = {
        let c = UIButton()
        c.setImage(UIImage(systemName: "camera"), for: .normal)
        c.tintColor = .black
        return c
    }()
    
    private let userImage: UIImageView = {
        let u = UIImageView()
        u.image = UIImage(named: "UserImage")
        u.hoverStyle?.shape = .circle
        return u
    }()
    
    private let userName: UILabel = {
        let u = UILabel()
        u.text = "SOOHYUN_iOS"
        u.font = UIFont.boldSystemFont(ofSize: 16)
        u.textColor = .black
        return u
    }()
    
    private let userDescription: UILabel = {
        let u = UILabel()
        u.text = "팔로워 326 팔로잉 20"
        u.font = UIFont.systemFont(ofSize: 12)
        u.textColor = .black
        return u
    }()
    
    let manageProfileButton: UIButton = {
        let m = UIButton()
        m.setTitle("프로필 관리", for: .normal)
        m.setTitleColor(UIColor.black, for: .normal)
        m.titleLabel?.font = UIFont.systemFont(ofSize: 9)
        m.backgroundColor = .clear
        m.layer.borderWidth = 1
        m.layer.borderColor = UIColor.lightGray.cgColor
        m.layer.cornerRadius = 10
        return m
    }()
    
    private let shareProfileButton: UIButton = {
        let m = UIButton()
        m.setTitle("프로필 공유", for: .normal)
        m.setTitleColor(UIColor.black, for: .normal)
        m.titleLabel?.font = UIFont.systemFont(ofSize: 9)
        m.backgroundColor = .clear
        m.layer.borderWidth = 1
        m.layer.borderColor = UIColor.lightGray.cgColor
        m.layer.cornerRadius = 10
        return m
    }()
    
    func setupUI() {
        addSubview(optionButton)
        optionButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(75)
            make.leading.equalToSuperview().offset(32.5)
        }
        
        addSubview(cameraButton)
        cameraButton.snp.makeConstraints { make in
            make.top.equalTo(optionButton.snp.top)
            make.trailing.equalToSuperview().offset(-32.5)
        }
        
        addSubview(userImage)
        userImage.snp.makeConstraints { make in
            make.top.equalTo(optionButton.snp.bottom).offset(26)
            make.leading.equalTo(optionButton.snp.leading)
            make.width.height.equalTo(90)
        }
        
        addSubview(userName)
        userName.snp.makeConstraints { make in
            make.top.equalTo(userImage.snp.top).offset(21)
            make.centerY.equalTo(userImage.snp.centerY)
            make.leading.equalTo(userImage.snp.trailing).offset(16)
        }
        
        addSubview(userDescription)
        userDescription.snp.makeConstraints { make in
            make.top.equalTo(userName.snp.bottom).offset(6)
            make.leading.equalTo(userName.snp.leading)
        }
        
        addSubview(manageProfileButton)
        manageProfileButton.snp.makeConstraints { make in
            make.top.equalTo(userImage.snp.bottom).offset(26)
            make.leading.equalTo(userImage.snp.leading)
            make.width.equalTo(157)
            make.height.equalTo(26)
        }
        
        addSubview(shareProfileButton)
        shareProfileButton.snp.makeConstraints { make in
            make.top.equalTo(manageProfileButton)
            make.trailing.equalToSuperview().offset(-32.5)
            make.width.equalTo(157)
            make.height.equalTo(26)
        }
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
