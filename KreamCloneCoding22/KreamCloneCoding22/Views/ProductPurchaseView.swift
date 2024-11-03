//
//  ProductPurchaseView.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 11/3/24.
//

import UIKit

class ProductPurchaseView: UIView {

    let buyLabel: UILabel = {
        let b = UILabel()
        b.text = "구매하기"
        b.font = .systemFont(ofSize: 15, weight: .bold)
        b.textColor = .black
        b.textAlignment = .center
        return b
    }()
    
    let descriptionLabel: UILabel = {
        let d = UILabel()
        d.text = "(가격 단위: 원)"
        d.font = .systemFont(ofSize: 10, weight: .regular)
        d.textColor = .lightGray
        d.textAlignment = .center
        return d
    }()
    
    let closeButton: UIButton = {
        let c = UIButton()
        c.setImage(UIImage(systemName: "xmark"), for: .normal)
        c.backgroundColor = .clear
        c.tintColor = .black
        return c
    }()
    
    let productImage: UIImageView = {
        let p = UIImageView()
        p.image = UIImage(named: "matinkim")
        p.contentMode = .scaleAspectFit
        p.layer.cornerRadius = 8
        return p
    }()
    
    let productName: UILabel = {
        let p = UILabel()
        p.text = "Matin Kim Logo Coating Jumper"
        p.font = .systemFont(ofSize: 14, weight: .semibold)
        p.textColor = .black
        return p
    }()
    
    let productNameKorean: UILabel = {
        let p = UILabel()
        p.text = "마뗑킴 로고 코팅 점퍼 블랙"
        p.font = .systemFont(ofSize: 12, weight: .semibold)
        p.textColor = .lightGray
        return p
    }()
    
    let button_s: CustomSizeButton = {
        let b = CustomSizeButton()
        b.sizeLabel.text = "S"
        b.layer.cornerRadius = 10
        b.backgroundColor = .clear
        b.layer.borderWidth = 1
        b.layer.borderColor = UIColor.lightGray.cgColor
        return b
    }()
    
    let button_m: CustomSizeButton = {
        let b = CustomSizeButton()
        b.sizeLabel.text = "M"
        b.layer.cornerRadius = 10
        b.backgroundColor = .clear
        b.layer.borderWidth = 1
        b.layer.borderColor = UIColor.lightGray.cgColor
        return b
    }()
    
    let button_l: CustomSizeButton = {
        let b = CustomSizeButton()
        b.sizeLabel.text = "L"
        b.layer.cornerRadius = 10
        b.backgroundColor = .clear
        b.layer.borderWidth = 1
        b.layer.borderColor = UIColor.lightGray.cgColor
        return b
    }()
    
    let button_xl: CustomSizeButton = {
        let b = CustomSizeButton()
        b.sizeLabel.text = "XL"
        b.layer.cornerRadius = 10
        b.backgroundColor = .clear
        b.layer.borderWidth = 1
        b.layer.borderColor = UIColor.lightGray.cgColor
        return b
    }()
    
    let button_xxl: CustomSizeButton = {
        let b = CustomSizeButton()
        b.sizeLabel.text = "XXL"
        b.layer.cornerRadius = 10
        b.backgroundColor = .clear
        b.layer.borderWidth = 1
        b.layer.borderColor = UIColor.lightGray.cgColor
        return b
    }()
    
    let quickShip: CustomShipButton = {
        let q = CustomShipButton()
        q.backgroundColor = UIColor(hex: "#EF6254")
        q.layer.cornerRadius = 10
        return q
    }()
    
    let normalShip: CustomShipButton = {
        let n = CustomShipButton()
        n.label1.text = "407,000"
        n.label2.text = "일반배송(5~7일 소요)"
        n.backgroundColor = .black
        n.layer.cornerRadius = 10
        return n
    }()
    
    
    func setupUI() {
        addSubview(buyLabel)
        buyLabel.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(20)
            make.centerX.equalToSuperview()
        }
        
        addSubview(descriptionLabel)
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(buyLabel.snp.bottom).offset(1)
            make.centerX.equalTo(buyLabel.snp.centerX)
        }
        
        addSubview(closeButton)
        closeButton.snp.makeConstraints { make in
            make.top.equalTo(buyLabel.snp.top).offset(2)
            make.trailing.equalToSuperview().offset(-16)
            make.width.height.equalTo(20)
        }
        
        addSubview(productImage)
        productImage.snp.makeConstraints { make in
            make.top.equalTo(descriptionLabel.snp.bottom).offset(11)
            make.leading.equalToSuperview().offset(16)
            make.width.height.equalTo(91)
        }
        
        addSubview(productName)
        productName.snp.makeConstraints { make in
            make.top.equalTo(productImage.snp.top).offset(18)
            make.leading.equalTo(productImage.snp.trailing).offset(15)
        }
        
        addSubview(productNameKorean)
        productNameKorean.snp.makeConstraints { make in
            make.top.equalTo(productName.snp.bottom).offset(4)
            make.leading.equalTo(productName)
        }
        
        addSubview(button_s)
        button_s.snp.makeConstraints { make in
            make.top.equalTo(productImage.snp.bottom).offset(35)
            make.leading.equalTo(productImage.snp.leading)
            make.width.equalTo(110)
            make.height.equalTo(47)
        }
        
        addSubview(button_m)
        button_m.snp.makeConstraints { make in
            make.top.equalTo(button_s)
            make.leading.equalTo(button_s.snp.trailing).offset(7)
            make.width.height.equalTo(button_s)
        }
        
        addSubview(button_l)
        button_l.snp.makeConstraints { make in
            make.top.equalTo(button_m)
            make.leading.equalTo(button_m.snp.trailing).offset(7)
            make.width.height.equalTo(button_m)
        }
        
        addSubview(button_xl)
        button_xl.snp.makeConstraints { make in
            make.top.equalTo(button_s.snp.bottom).offset(8)
            make.leading.equalTo(button_s)
            make.width.height.equalTo(button_s)
        }
        
        addSubview(button_xxl)
        button_xxl.snp.makeConstraints { make in
            make.top.equalTo(button_xl.snp.top)
            make.leading.equalTo(button_xl.snp.trailing).offset(7)
            make.width.height.equalTo(button_xl)
        }
        
        addSubview(quickShip)
        quickShip.snp.makeConstraints { make in
            make.top.equalTo(button_xl.snp.bottom).offset(365)
            make.leading.equalToSuperview().offset(16)
            make.width.equalTo(168)
            make.height.equalTo(52)
        }
        
        addSubview(normalShip)
        normalShip.snp.makeConstraints { make in
            make.top.equalTo(quickShip.snp.top)
            make.trailing.equalToSuperview().offset(-16)
            make.width.height.equalTo(quickShip)
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
