//
//  ProductDetailView.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 11/3/24.
//

import UIKit

class ProductDetailView: UIView {

    let productPicture: UIImageView = {
        let p = UIImageView()
        p.contentMode = .scaleAspectFit
        p.image = UIImage(named: "matinkim")
        return p
    }()
    
    let colorCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout().then {
        $0.estimatedItemSize = .init(width: 53, height: 53)
        $0.minimumInteritemSpacing = 8
        $0.scrollDirection = .horizontal
    }).then {
        $0.backgroundColor = .clear
        $0.isScrollEnabled = true
        $0.register(ProductDifferentColorCell.self, forCellWithReuseIdentifier: ProductDifferentColorCell.identifier)
    }
    
    let buyNowLabel: UILabel = {
        let l = UILabel()
        l.text = "즉시 구매가"
        l.font = .systemFont(ofSize: 12)
        l.textColor = .lightGray
        return l
    }()
    
    let priceLabel: UILabel = {
        let p = UILabel()
        p.text = "228,000원"
        p.font = .systemFont(ofSize: 20, weight: .bold)
        p.textColor = .black
        return p
    }()
    
    let productName: UILabel = {
        let p = UILabel()
        p.text = "Matin Kim Logo Coating Jumper"
        p.font = .systemFont(ofSize: 16, weight: .semibold)
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
    
    let buttonView: UIView = {
        let b = UIView()
        b.backgroundColor = UIColor(hex: "#F3F3F3")
        return b
    }()
    
    let bookmarkButton: UIButton = {
        let b = UIButton()
        b.setImage(UIImage(systemName: "bookmark"), for: .normal)
        b.backgroundColor = .clear
        b.tintColor = .black
        return b
    }()
    
    let buyButton: CustomBuyCellButton = {
        let b = CustomBuyCellButton()
        b.label1.text = "구매"
        b.priceLabel.text = "345,000"
        b.label2.text = "즉시 구매가"
        b.backgroundColor = UIColor(hex: "#EF6254")
        b.layer.cornerRadius = 10
        return b
    }()
    
    let sellButton: CustomBuyCellButton = {
        let s = CustomBuyCellButton()
        s.label1.text = "판매"
        s.priceLabel.text = "396,000"
        s.label2.text = "즉시 판매가"
        s.backgroundColor = UIColor(hex: "#41B97A")
        s.layer.cornerRadius = 10
        return s
    }()
    
    
    func setupUI() {
        addSubview(productPicture)
        productPicture.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(48)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(373)
        }
        
        addSubview(colorCollectionView)
        colorCollectionView.snp.makeConstraints { make in
            make.top.equalTo(productPicture.snp.bottom).offset(20)
            make.leading.equalTo(productPicture.snp.leading)
            make.width.equalTo(419)
            make.height.equalTo(53)
        }
        
        addSubview(buyNowLabel)
        buyNowLabel.snp.makeConstraints { make in
            make.top.equalTo(colorCollectionView.snp.bottom).offset(23)
            make.leading.equalTo(colorCollectionView.snp.leading).offset(16)
        }
        
        addSubview(priceLabel)
        priceLabel.snp.makeConstraints { make in
            make.top.equalTo(buyNowLabel.snp.bottom).offset(4)
            make.leading.equalTo(buyNowLabel.snp.leading)
        }
        
        addSubview(productName)
        productName.snp.makeConstraints { make in
            make.top.equalTo(priceLabel.snp.bottom).offset(18)
            make.leading.equalTo(buyNowLabel.snp.leading)
        }
        
        addSubview(productNameKorean)
        productNameKorean.snp.makeConstraints { make in
            make.top.equalTo(productName.snp.bottom).offset(6)
            make.leading.equalTo(productName.snp.leading)
        }
        
        addSubview(buttonView)
        buttonView.snp.makeConstraints { make in
            make.top.equalTo(productNameKorean.snp.bottom).offset(54)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(95)
        }
        
        buttonView.addSubview(bookmarkButton)
        bookmarkButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(12)
            make.leading.equalToSuperview().offset(16)
            make.width.equalTo(29)
            make.height.equalTo(38)
        }
        
        buttonView.addSubview(buyButton)
        buyButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8)
            make.leading.equalTo(bookmarkButton.snp.trailing).offset(19)
            make.width.equalTo(147)
            make.height.equalTo(49)
        }
        
        buttonView.addSubview(sellButton)
        sellButton.snp.makeConstraints { make in
            make.top.equalTo(buyButton.snp.top)
            make.leading.equalTo(buyButton.snp.trailing).offset(6)
            make.width.height.equalTo(buyButton)
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
