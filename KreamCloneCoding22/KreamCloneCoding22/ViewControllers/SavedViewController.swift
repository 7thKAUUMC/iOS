//
//  SavedViewController.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 10/18/24.
//

import UIKit

class SavedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var productList: [ProductModel] = [
        ProductModel(image: "ProductImage", productName: "손으로공예 원아트머리 배꼽", productDescription: "손으로 만드는 예술 작품", productPrice: "942,192,000원"),
        ProductModel(image: "ProductImage", productName: "골든 반지", productDescription: "귀한 황금 반지입니다.", productPrice: "12,000원"),
        ProductModel(image: "ProductImage", productName: "하얀 신발", productDescription: "깔끔한 디자인의 하얀 신발입니다.", productPrice: "90,000원"),
        ProductModel(image: "ProductImage", productName: "에베레스트 다이아 반지", productDescription: "에베레스트에서만 구할 수 있는 귀한 다이아몬드 반지.", productPrice: "1,292,999,000원"),
        ProductModel(image: "ProductImage", productName: "아디다스 신발", productDescription: "편안한 착용감을 자랑하는 아디다스 신발.", productPrice: "120,000원"),
        ProductModel(image: "ProductImage", productName: "고장난 기타", productDescription: "고장난 기타입니다", productPrice: "1231234235원"),
        ProductModel(image: "ProductImage", productName: "고장난 기타", productDescription: "고장난 기타입니다", productPrice: "1231234235원"),
        ProductModel(image: "ProductImage", productName: "고장난 기타", productDescription: "고장난 기타입니다", productPrice: "1231234235원"),
        ProductModel(image: "ProductImage", productName: "고장난 기타", productDescription: "고장난 기타입니다", productPrice: "1231234235원"),
        ProductModel(image: "ProductImage", productName: "고장난 기타", productDescription: "고장난 기타입니다", productPrice: "1231234235원"),
        ProductModel(image: "ProductImage", productName: "고장난 기타", productDescription: "고장난 기타입니다", productPrice: "1231234235원")
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Saved"
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    private lazy var tableView: UITableView = {
        let t = UITableView()
        t.register(SavedTableViewCell.self, forCellReuseIdentifier: "SavedTableViewCell")
        
        t.delegate = self
        t.dataSource = self
        
        return t
    }()

    func setupUI() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(50)
            make.leading.trailing.bottom.equalTo(view.safeAreaLayoutGuide)
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SavedTableViewCell", for: indexPath) as? SavedTableViewCell else {
            return UITableViewCell()
        }
        let product = productList[indexPath.row]
        cell.configure(with: product)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 102.7
    }
    
}
