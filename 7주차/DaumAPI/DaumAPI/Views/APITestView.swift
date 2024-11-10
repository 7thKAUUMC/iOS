//
//  APITestView.swift
//  DaumAPI
//
//  Created by 이수현 on 11/10/24.
//

import UIKit
import SnapKit

class APITestView: UIView {

    let textField: UITextField = {
        let t = UITextField()
        t.placeholder = "검색하고 싶은 것을 넣으세요!"
        t.layer.borderColor = UIColor.black.cgColor
        t.layer.borderWidth = 1
        t.layer.cornerRadius = 10
        return t
    }()
    
    let searchButton: UIButton = {
        let b = UIButton()
        b.setTitle("검색", for: .normal)
        b.setTitleColor(.black, for: .normal)
        b.backgroundColor = .lightGray
        b.layer.cornerRadius = 10
        return b
    }()
    
    let titleLabel: UILabel = {
        let t = UILabel()
        t.font = .systemFont(ofSize: 20, weight: .semibold)
        t.textColor = .black
        t.textAlignment = .center
        t.numberOfLines = 0
        return t
    }()
    
    let contentsLabel: UILabel = {
        let c = UILabel()
        c.font = .systemFont(ofSize: 20, weight: .semibold)
        c.textColor = .black
        c.textAlignment = .center
        c.numberOfLines = 0
        return c
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init? (coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        addSubview(textField)
        textField.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(94)
            make.leading.equalToSuperview().offset(26)
            make.width.equalTo(262)
            make.height.equalTo(43)
        }
        
        addSubview(searchButton)
        searchButton.snp.makeConstraints { make in
            make.top.bottom.equalTo(textField)
            make.leading.equalTo(textField.snp.trailing).offset(21)
            make.width.equalTo(58)
        }
        
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(textField.snp.bottom).offset(91)
            make.centerX.equalToSuperview()
            make.leading.equalToSuperview().offset(18.5)
        }
        
        addSubview(contentsLabel)
        contentsLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(91)
            make.centerX.equalToSuperview()
            make.leading.equalTo(titleLabel)
        }
    }

}
