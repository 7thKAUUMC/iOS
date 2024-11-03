//
//  JustDroppedCell.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 11/3/24.
//

import UIKit
import SnapKit
import Foundation

class JustDroppedCell: UICollectionViewCell {

    static let identifier = "JustDroppedCell"
    
    var productPicture: UIImageView = {
        let i = UIImageView()
        i.contentMode = .scaleAspectFit
        i.layer.cornerRadius = 12
        return i
    }()
    
    let brandName: UILabel = {
        let l = UILabel()
        l.font = .systemFont(ofSize: 12)
        l.textColor = .black
        return l
    }()
    
    let productName: UILabel = {
        let l = UILabel()
        l.font = .systemFont(ofSize: 12)
        l.textColor = .black
        return l
    }()
    
    let productPrice: UILabel = {
        let l = UILabel()
        l.font = .systemFont(ofSize: 13)
        l.textColor = .black
        return l
    }()
    
    let buyNowLabel: UILabel = {
        let l = UILabel()
        l.font = .systemFont(ofSize: 10)
        l.textColor = .black
        l.text = "즉시 구매가"
        return l
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        addSubview(productPicture)
        productPicture.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.height.width.equalTo(142)
        }
        
        addSubview(brandName)
        brandName.snp.makeConstraints { make in
            make.top.equalTo(productPicture.snp.bottom).offset(8)
            make.leading.equalTo(productPicture.snp.leading).offset(4)
        }
        
        addSubview(productName)
        productName.snp.makeConstraints { make in
            make.top.equalTo(brandName.snp.bottom).offset(3)
            make.leading.equalTo(brandName)
        }
        
        addSubview(productPrice)
        productPrice.snp.makeConstraints { make in
            make.top.equalTo(productName.snp.bottom).offset(26)
            make.leading.equalTo(productName.snp.leading)
        }
        
        addSubview(buyNowLabel)
        buyNowLabel.snp.makeConstraints { make in
            make.top.equalTo(productPrice.snp.bottom).offset(2)
            make.leading.equalTo(productPrice.snp.leading)
        }
    }

}
