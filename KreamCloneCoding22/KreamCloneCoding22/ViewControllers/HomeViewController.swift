//
//  HomeViewController.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 10/18/24.
//

import UIKit

class HomeViewController: UIViewController {

    let homeView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        view.addSubview(homeView)
        homeView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

}
