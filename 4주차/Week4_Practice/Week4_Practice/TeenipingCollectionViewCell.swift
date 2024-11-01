//
//  TeenipingCollectionViewCell.swift
//  Week4_Practice
//
//  Created by 이수현 on 11/1/24.
//

import UIKit

class TeenipingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "TeenipingCollectionViewCell"
    
    let imageView: UIImageView = {
        let i = UIImageView()
        i.contentMode = .scaleAspectFill
        i.layer.cornerRadius = 8
        i.image = UIImage(named: "image")
        return i
    }()
    
    let titleLabel: UILabel = {
        let l = UILabel()
        l.font = .systemFont(ofSize: 10, weight: .semibold)
        l.textColor = .black
        l.textAlignment = .center
        l.text = "티니핑"
        return l
    }()
    
    func setupUI() {
        addSubview(imageView)
        
        imageView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(120)
        }
        
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(12)
            make.leading.equalTo(imageView.snp.leading).offset(4)
        }
    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init? (coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
