//
//  KreamCollectionViewCell.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 11/1/24.
//

import UIKit

class KreamCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "KreamCollectionViewCell"
    
    let label: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 11.5, weight: .medium)
        label.text = "크림 드로우"
        return label
    }()
    
    let image: UIImageView = {
        let i = UIImageView()
        i.contentMode = .scaleAspectFit
        return i
    }()
    
    func setupUI() {
        addSubview(image)
        image.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalTo(61)
        }
        
        addSubview(label)
        label.snp.makeConstraints { make in
            make.top.equalTo(image.snp.bottom).offset(6)
            make.leading.equalTo(image.snp.leading).offset(4)
            make.centerX.equalTo(image.snp.centerX)
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
