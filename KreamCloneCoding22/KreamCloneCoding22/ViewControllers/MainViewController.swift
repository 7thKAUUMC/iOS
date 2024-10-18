//
//  MainViewController.swift
//  KreamCloneCoding22
//
//  Created by 이수현 on 10/18/24.
//

import UIKit

class MainViewController: UITabBarController {

    private let homeVC = UINavigationController(rootViewController: HomeViewController())
    private let styleVC = UINavigationController(rootViewController: StyleViewController())
    private let shopVC = UINavigationController(rootViewController: ShopViewController())
    private let savedVC = UINavigationController(rootViewController: SavedViewController())
    private let myVC = UINavigationController(rootViewController: MyPageViewController())
    
    override func viewDidLoad() {
        super.viewDidLoad()

        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house.fill"), tag: 0)
        styleVC.tabBarItem = UITabBarItem(title: "Style", image: UIImage(systemName: "book.pages"), tag: 1)
        shopVC.tabBarItem = UITabBarItem(title: "Shop", image: UIImage(systemName: "plus.magnifyingglass"), tag: 2)
        savedVC.tabBarItem = UITabBarItem(title: "Saved", image: UIImage(systemName: "bookmark.fill"), tag: 3)
        myVC.tabBarItem = UITabBarItem(title: "My", image: UIImage(systemName: "person.fill"), tag: 4)
        
        viewControllers = [homeVC, styleVC, shopVC, savedVC, myVC]
        tabBar.tintColor = .black
    }
    
    

}
