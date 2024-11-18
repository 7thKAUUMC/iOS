//
//  SearchCollectionViewCell.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 11/17/24.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    static let identifier: String = "SearchCollectionViewCell"
    
    let button: UIButton = {
        let b = UIButton()
        b.backgroundColor = UIColor(hex: "#F6F6F6")
        b.setTitleColor(.black, for: .normal)
        b.setTitle("예시", for: .normal)
        b.titleLabel?.font = .systemFont(ofSize: 13)
        b.layer.cornerRadius = 20
        b.layer.borderWidth = 1
        b.layer.borderColor = UIColor(hex: "#ECECEC")?.cgColor
        b.invalidateIntrinsicContentSize()
        return b
    }()
    
    func setupUI() {
        addSubview(button)
        button.snp.makeConstraints { make in
            make.edges.equalToSuperview()
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
