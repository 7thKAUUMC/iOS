//
//  ViewController.swift
//  DaumAPI
//
//  Created by 이수현 on 11/10/24.
//

import UIKit

class ViewController: UIViewController {

    let searchView = APITestView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI() {
        view.addSubview(searchView)
        searchView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        searchView.searchButton.addTarget(self, action: #selector(searchText), for: .touchUpInside)
    }
    
    @objc func searchText() {
        let query = searchView.textField.text ?? ""
        search(query: query)
    }
    
    private func search(query: String) {
        let url = "https://dapi.kakao.com/v2/search/web"
        let parameters: [String: Any] = ["query": query]
        
        APIClients.shared.request(url, method: .get, parameters: parameters) { (result: Result<SearchModel, Error>) in
            switch result {
            case.success(let response):
                self.updateView(response)
            case.failure(let error):
                print("오류 \(error)")
            }
            
        }
    }
    
    private func updateView(_ model: SearchModel) {
        searchView.titleLabel.text = model.documents.first?.title
        searchView.contentsLabel.text = model.documents.first?.contents
    }
    
    
}

