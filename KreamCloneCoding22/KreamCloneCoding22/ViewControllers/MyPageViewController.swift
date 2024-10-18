//
//  MyPageViewController.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 10/18/24.
//

import UIKit

class MyPageViewController: UIViewController {

    let myPageVC = MyPageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = myPageVC
        // Do any additional setup after loading the view.
        myPageVC.manageProfileButton.addTarget(self, action: #selector(manageProfileButtonTapped), for: .touchUpInside)
    }
    
    @objc func manageProfileButtonTapped() {
        print("called")
        let nextVC = ManageProfileViewController()
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    

}
