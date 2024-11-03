//
//  ProductPurchaseViewController.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 11/3/24.
//

import UIKit
import Foundation

class ProductPurchaseViewController: UIViewController {

    let productPurchaseView = ProductPurchaseView()
    var prevButton: UIButton? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        setupButton()
    }
    

    func setupUI() {
        view.backgroundColor = .white
        
        view.addSubview(productPurchaseView)
        productPurchaseView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        
    }
    
    func setupButton() {
        productPurchaseView.closeButton.addTarget(self, action: #selector(prevVC), for: .touchUpInside)
        productPurchaseView.button_s.addTarget(self, action: #selector(selectSize), for: .touchUpInside)
        productPurchaseView.button_m.addTarget(self, action: #selector(selectSize), for: .touchUpInside)
        productPurchaseView.button_l.addTarget(self, action: #selector(selectSize), for: .touchUpInside)
        productPurchaseView.button_xl.addTarget(self, action: #selector(selectSize), for: .touchUpInside)
        productPurchaseView.button_xxl.addTarget(self, action: #selector(selectSize), for: .touchUpInside)
    }
    
    @objc func prevVC() {
        dismiss(animated: true, completion: nil)
    }

    @objc func selectSize(sender: UIButton) {
        sender.layer.borderColor = UIColor.black.cgColor
        prevButton?.layer.borderColor = UIColor.lightGray.cgColor
        prevButton = sender
    }
    
}
