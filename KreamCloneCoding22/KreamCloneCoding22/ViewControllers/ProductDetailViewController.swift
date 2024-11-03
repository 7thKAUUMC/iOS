//
//  ProductDifferentColorCellViewController.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 11/3/24.
//

import UIKit

class ProductDetailViewController: UIViewController, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        ProductDifferentColorModel.dummy().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: ProductDifferentColorCell.identifier,
            for: indexPath
        ) as? ProductDifferentColorCell else {
            return UICollectionViewCell()
        }
        
        let list = ProductDifferentColorModel.dummy()
        cell.productImage.image = list[indexPath.row].image
        
        return cell
    }
    
    let productDetailView = ProductDetailView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupDelegate()
    }
    
    func setupUI() {
        view.backgroundColor = .white
        
        view.addSubview(productDetailView)
        productDetailView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        productDetailView.buyButton.addTarget(self, action: #selector(nextVC), for: .touchUpInside)
    }
    
    func setupDelegate() {
        productDetailView.colorCollectionView.dataSource = self
    }
    
    @objc func nextVC() {
        let nextVC = ProductPurchaseViewController()
        nextVC.modalTransitionStyle = .coverVertical
        present(nextVC, animated: true, completion: nil)
    }
}
