//
//  SearchView.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 11/17/24.
//

import UIKit
import Moya

class SearchView: UIView {
    
    let provider = MoyaProvider<UserTargetTypeModel>()
    
    
    let searchBar: UITextField = {
        let s = UITextField()
        s.placeholder = "\t브랜드, 상품, 프로필, 태그 등"
        s.backgroundColor = UIColor(hex: "#F5F5F5")
        s.layer.cornerRadius = 5
        s.isEnabled = true
        return s
    }()
    
    let cancelButton: UIButton = {
        let c = UIButton()
        c.setTitle("취소", for: .normal)
        c.setTitleColor(.black, for: .normal)
        c.titleLabel?.font = .systemFont(ofSize: 14)
        return c
    }()
    
    let recommendedText: UILabel = {
        let r = UILabel()
        r.text = "추천 검색어"
        r.textColor = .black
        r.textAlignment = .center
        r.font = .boldSystemFont(ofSize: 15)
        return r
    }()
    
    let recommendedCollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout().then {
        //$0.itemSize = .init(width: 100, height: 32)
        $0.minimumLineSpacing = 12
        $0.minimumInteritemSpacing = 8
    }).then {
        $0.backgroundColor = .clear
        $0.isScrollEnabled = false
        $0.register(SearchCollectionViewCell.self, forCellWithReuseIdentifier: SearchCollectionViewCell.identifier)
    }
    
    func setupUI() {
        addSubview(searchBar)
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(safeAreaLayoutGuide.snp.top).offset(7)
            make.leading.equalToSuperview().offset(16)
            make.width.equalTo(306)
            make.height.equalTo(39)
        }
        
        addSubview(cancelButton)
        cancelButton.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.top).offset(11)
            make.centerY.equalTo(searchBar.snp.centerY)
            make.leading.equalTo(searchBar.snp.trailing).offset(11)
        }
        
        addSubview(recommendedText)
        recommendedText.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(41)
            make.leading.equalTo(searchBar.snp.leading)
        }
        
        addSubview(recommendedCollectionView)
        recommendedCollectionView.snp.makeConstraints { make in
            make.top.equalTo(recommendedText.snp.bottom).offset(11)
            make.leading.equalTo(recommendedText.snp.leading)
            make.centerX.equalToSuperview()
            make.height.equalTo(100)
        }
    }
    
    
    func fetchGetData(with query: String) {
        provider.request(.getData(param: query)) { result in
            switch result {
            case.success(let response):
//                if let jsonString = String(data: response.data, encoding: .utf8) {
//                    print("Response JSON String: \(jsonString)")
//                }
                
                do {
                    let data = try response.map(UserResponseModel.self)
                    print(data)
                } catch {
                    print(error.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
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
