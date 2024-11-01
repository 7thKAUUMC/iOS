//
//  HomeView.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 10/24/24.
//

import Foundation
import UIKit
import SnapKit

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
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
