//
//  ProductDifferentColorCell.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 11/3/24.
//

import UIKit

class ProductDifferentColorCell: UICollectionViewCell {
    
    static let identifier: String = "ProductDifferentColorCell"
    
    let productImage: UIImageView = {
        let p = UIImageView()
        p.contentMode = .scaleAspectFit
        return p
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        addSubview(productImage)
        productImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
