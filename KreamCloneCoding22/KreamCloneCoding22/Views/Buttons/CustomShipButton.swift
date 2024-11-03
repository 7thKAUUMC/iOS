//
//  CustonShipButton.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 11/3/24.
//

import UIKit

class CustomShipButton: UIButton {

    let label1: UILabel = {
        let l = UILabel()
        l.text = "345,000"
        l.textColor = .white
        l.font = .systemFont(ofSize: 14)
        return l
    }()
    
    let label2: UILabel = {
        let l = UILabel()
        l.text = "빠른배송 (1~2일 소요)"
        l.textColor = .lightGray
        l.font = .systemFont(ofSize: 10)
        return l
    }()
    
    func setupUI() {
        addSubview(label1)
        label1.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(11)
            make.centerX.equalToSuperview()
        }
        
        addSubview(label2)
        label2.snp.makeConstraints { make in
            make.top.equalTo(label1.snp.bottom).offset(1)
            make.centerX.equalToSuperview()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init? (coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
