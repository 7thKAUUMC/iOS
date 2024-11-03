//
//  HomeView.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 10/24/24.
//

import Foundation
import UIKit
import SnapKit
import Then

class HomeView: UIView {
    
    private let searchBar: UITextField = {
        let s = UITextField()
        s.placeholder = "\t브랜드, 상품, 프로필, 태그 등"
        s.backgroundColor = .lightGray
        s.layer.cornerRadius = 5
        return s
    }()
    
    private let notificationButton: UIButton = {
        let n = UIButton()
        n.setImage(UIImage(systemName: "bell"), for: .normal)
        n.tintColor = .black
        return n
    }()
    
    private let segementControl: UISegmentedControl = {
        let s = UISegmentedControl(items: ["추천", "랭킹", "발매정보", "럭셔리", "남성", "여성"])
        s.setBackgroundImage(UIImage(), for: .normal, barMetrics: .default)
        s.setBackgroundImage(UIImage(), for: .selected, barMetrics: .default)
        s.setBackgroundImage(UIImage(), for: .highlighted, barMetrics: .default)
        s.setDividerImage(UIImage(), forLeftSegmentState: .selected, rightSegmentState: .normal, barMetrics: .default)
        s.selectedSegmentIndex = 0
        s.setWidth(60, forSegmentAt: 0)
        s.setWidth(60, forSegmentAt: 1)
        s.setWidth(60, forSegmentAt: 2)
        s.setWidth(60, forSegmentAt: 3)
        s.setWidth(60, forSegmentAt: 4)
        s.setWidth(60, forSegmentAt: 5)
        
        s.setTitleTextAttributes(
            [
                NSAttributedString.Key.foregroundColor: UIColor.black,
                .font: UIFont.systemFont(ofSize: 16, weight: .medium)
            ], for: .normal
        )
        s.setTitleTextAttributes(
            [
                NSAttributedString.Key.foregroundColor: UIColor.black,
                .font: UIFont.systemFont(ofSize: 16, weight: .bold)
            ], for: .selected
        )
        return s
    }()
    
    private let adImage: UIImageView = {
        let a = UIImageView()
        a.image = UIImage(named: "image_ad_none")
        a.contentMode = .scaleAspectFill
        return a
    }()
    
    let itemCollecionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout().then {
        $0.estimatedItemSize = .init(width: 61, height: 81)
        $0.minimumInteritemSpacing = 9
    }).then {
        $0.backgroundColor = .clear
        $0.isScrollEnabled = false
        $0.register(KreamCollectionViewCell.self, forCellWithReuseIdentifier: KreamCollectionViewCell.identifier)
        $0.tag = 0
    }
    
    
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = true
        scrollView.showsHorizontalScrollIndicator = false
        return scrollView
    }()
    
    private let vector: UIView = {
        let v = UIView()
        v.backgroundColor = .lightGray
        return v
    }()
    
    private let droppedLabel: UILabel = {
        let d = UILabel()
        d.text = "Just Dropped"
        d.textColor = .black
        d.font = .systemFont(ofSize: 16, weight: .bold)
        d.textAlignment = .center
        return d
    }()
    
    let droppedCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout().then {
        $0.estimatedItemSize = .init(width: 142, height: 237)
        $0.minimumInteritemSpacing = 8
        $0.scrollDirection = .horizontal
    }).then {
        $0.backgroundColor = .clear
        $0.isScrollEnabled = true
        $0.register(JustDroppedCell.self, forCellWithReuseIdentifier: JustDroppedCell.identifier)
        $0.tag = 1
    }

    func setupUI() {
        
        addSubview(searchBar)
        searchBar.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(55)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-55)
            make.height.equalTo(40)
        }
        
        addSubview(notificationButton)
        notificationButton.snp.makeConstraints { make in
            make.centerY.equalTo(searchBar.snp.centerY)
            make.leading.equalTo(searchBar.snp.trailing).offset(15)
            make.height.width.equalTo(24)
        }
        
        addSubview(segementControl)
        segementControl.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(16)
            make.leading.equalTo(searchBar.snp.leading).offset(8)
            make.centerX.equalToSuperview()
            make.height.equalTo(27)
        }
        
        addSubview(scrollView)
        scrollView.snp.makeConstraints { make in
            make.top.equalTo(segementControl.snp.bottom)
            make.bottom.leading.trailing.equalTo(self.safeAreaLayoutGuide)
        }
        
        scrollView.addSubview(adImage)
        adImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(336)
        }
        
        scrollView.addSubview(itemCollecionView)
        itemCollecionView.snp.makeConstraints { make in
            make.top.equalTo(adImage.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.width.equalTo(341)
            make.height.equalTo(182)
        }
        
        scrollView.addSubview(vector)
        vector.snp.makeConstraints { make in
            make.top.equalTo(itemCollecionView.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(1)
        }
        
        scrollView.addSubview(droppedLabel)
        droppedLabel.snp.makeConstraints { make in
            make.top.equalTo(vector.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(16)
        }
        
        scrollView.addSubview(droppedCollectionView)
        droppedCollectionView.snp.makeConstraints { make in
            make.top.equalTo(droppedLabel.snp.bottom).offset(34)
            make.leading.equalToSuperview().offset(16)
            make.width.equalTo(442)
            make.height.equalTo(237)
            make.bottom.equalToSuperview().offset(-10)
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
