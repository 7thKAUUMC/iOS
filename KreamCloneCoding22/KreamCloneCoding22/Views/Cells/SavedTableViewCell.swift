//
//  SavedTableViewCell.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 10/18/24.
//

import UIKit

class SavedTableViewCell: UITableViewCell {

    private let productImage: UIImageView = {
        let p = UIImageView()
        p.contentMode = .scaleAspectFit
        p.image = UIImage(named: "ProductImage")
        return p
    }()
    
    private let productName: UILabel = {
        let p = UILabel()
        p.font = .systemFont(ofSize: 12, weight: .medium)
        p.textColor = .black
        p.text = "Product Name"
        return p
    }()
    
    private let productDescription: UILabel = {
        let p = UILabel()
        p.font = .systemFont(ofSize: 9)
        p.textColor = .lightGray
        p.text = "Product Description"
        return p
    }()
    
    private let bookmarkButton: UIButton = {
        let b = UIButton()
        b.setImage(UIImage(systemName: "bookmark"), for: .normal)
        // b.setImage(UIImage(systemName: "bookmark.fill"), for: .normal)
        b.tintColor = .black
        return b
    }()
    
    private let priceLabel: UILabel = {
        let p = UILabel()
        p.text = "$100"
        p.textColor = .black
        p.font = UIFont.boldSystemFont(ofSize: 14)
        return p
    }()
    
    func setupUI() {
        addSubview(productImage)
        productImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(13)
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().offset(13)
        }
        
        addSubview(productName)
        productName.snp.makeConstraints { make in
            make.top.equalTo(productImage)
            make.leading.equalTo(productImage.snp.trailing).offset(13)
        }
        
        addSubview(productDescription)
        productDescription.snp.makeConstraints { make in
            make.top.equalTo(productName.snp.bottom)
            make.leading.equalTo(productName.snp.leading)
        }
        
        addSubview(bookmarkButton)
        bookmarkButton.snp.makeConstraints { make in
            make.top.equalTo(productImage)
            make.trailing.equalToSuperview().offset(-17)
        }
        
        addSubview(priceLabel)
        priceLabel.snp.makeConstraints { make in
            make.top.equalTo(bookmarkButton).offset(31)
            make.trailing.equalTo(bookmarkButton.snp.trailing)
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
        bookmarkButton.addTarget(self, action: #selector(bookmarkButtonTapped), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(with product: ProductModel) {
        productImage.image = UIImage(named: product.image)
        productName.text = product.productName
        productDescription.text = product.productDescription
        priceLabel.text = product.productPrice
    }
    
    @objc func bookmarkButtonTapped(_ sender: UIButton) {
        // 버튼이 눌릴 때 선택 상태를 토글
        sender.isSelected.toggle()
    }
}
