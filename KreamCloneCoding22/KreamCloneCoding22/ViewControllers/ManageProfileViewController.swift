//
//  ManageProfileViewController.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 10/18/24.
//

import UIKit

class ManageProfileViewController: UIViewController {

    let manageProfileVC = ManageProfileView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = manageProfileVC
        self.navigationItem.title = "프로필 관리"
        self.navigationItem.leftBarButtonItem?.tintColor = .black
        self.navigationItem.leftBarButtonItem?.image = UIImage(systemName: "arrow.left")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
