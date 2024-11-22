//
//  HomeViewController.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 10/18/24.
//

import UIKit
import Kingfisher

class HomeViewController: UIViewController, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 0 {
            return HomeDataModel.dummy().count
        } else if collectionView.tag == 1 {
            return JustDroppedModel.dummy().count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 0 {
            guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: KreamCollectionViewCell.identifier,
                for: indexPath
            ) as? KreamCollectionViewCell else {
                return UICollectionViewCell()
            }
            
            let list = HomeDataModel.dummy()
            cell.image.image = list[indexPath.row].image
            cell.label.text = list[indexPath.row].text
            
            return cell
        } else {
            guard let cell = collectionView.dequeueReusableCell(
                withReuseIdentifier: JustDroppedCell.identifier, for: indexPath
            ) as? JustDroppedCell else {
                return UICollectionViewCell()
            }
            
            //            let list = JustDroppedModel.dummy()
            //            cell.productPicture.image = list[indexPath.row].image
            //            cell.brandName.text = list[indexPath.row].brandName
            //            cell.productName.text = list[indexPath.row].productName
            //            cell.productPrice.text = list[indexPath.row].price
            
            let list = JustDroppedModel.dummy()
            let model = list[indexPath.row]
            
            // Configure the cell
            cell.brandName.text = model.brandName
            cell.productName.text = model.productName
            cell.productPrice.text = model.price
            
            // Kingfisher를 사용하여 이미지 로드
            if let imageUrl = URL(string: model.image) {
                cell.productPicture.kf.setImage(with: imageUrl)
            }
            
            return cell
        }
    }
    
    
    
    let homeView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupDelegate()
        
        homeView.searchBar.addTarget(self, action: #selector(searchBarTapped), for: .editingDidBegin)
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        view.addSubview(homeView)
        homeView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
    }
    
    func setupDelegate() {
        homeView.itemCollecionView.dataSource = self
        homeView.droppedCollectionView.dataSource = self
    }
    
    @objc func searchBarTapped() {
        let searchVC = SearchViewController()
        navigationController?.pushViewController(searchVC, animated: true)
    }
    
}
