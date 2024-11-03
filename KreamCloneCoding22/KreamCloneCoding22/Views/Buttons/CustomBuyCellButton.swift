//
//  CustomBuyCellButton.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 11/3/24.
//

import UIKit

class CustomBuyCellButton: UIButton {

    let label1: UILabel = {
        let l = UILabel()
        l.text = "구매"
        l.textColor = .white
        l.font = .systemFont(ofSize: 16)
        return l
    }()
    
    let priceLabel: UILabel = {
        let l = UILabel()
        l.text = "10000"
        l.textColor = .white
        l.font = .systemFont(ofSize: 13)
        return l
    }()
    
    let label2: UILabel = {
        let l = UILabel()
        l.text = "즉시 구매가"
        l.textColor = .white
        l.font = .systemFont(ofSize: 10)
        return l
    }()
    
    func setupUI() {
        addSubview(label1)
        label1.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(15)
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(10)
        }
        
        addSubview(priceLabel)
        priceLabel.snp.makeConstraints { make in
            make.leading.equalTo(label1.snp.trailing).offset(21)
            make.top.equalToSuperview().offset(8)
        }
        
        addSubview(label2)
        label2.snp.makeConstraints { make in
            make.leading.equalTo(priceLabel.snp.leading)
            make.top.equalTo(priceLabel.snp.bottom).offset(2)
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
