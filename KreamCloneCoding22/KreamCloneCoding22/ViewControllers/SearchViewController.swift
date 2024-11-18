//
//  SearchViewController.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 11/17/24.
//

import UIKit

class SearchViewController: UIViewController, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return RecommendedSearchModel.dummy().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchCollectionViewCell.identifier, for: indexPath) as? SearchCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let list = RecommendedSearchModel.dummy()
        cell.button.setTitle(list[indexPath.row].text, for: .normal)
        return cell
    }
    

    let searchView = SearchView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupDelegate()
        searchView.searchBar.addTarget(self, action: #selector(textFieldDidChange(_: )), for: .editingChanged)
    }
    
    @objc private func textFieldDidChange(_ textField: UITextField) {
        guard let text = textField.text, !text.isEmpty else {
            print("EMPTY")
            return
        }
        searchView.fetchGetData(with: text)
    }

    func setupUI() {
        view.addSubview(searchView)
        searchView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    func setupDelegate() {
        searchView.recommendedCollectionView.dataSource = self
    }

}
