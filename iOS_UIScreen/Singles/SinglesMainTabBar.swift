//
//  SinglesMainTabBar.swift
//  iOS_UIScreen
//
//  Created by Dias Zait on 13.09.2023.
//

import Foundation
import UIKit

class SinglesMainTabBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = .black
        tabBar.layer.borderColor = UIColor.gray.cgColor
        tabBar.layer.borderWidth = 0.4
        tabBar.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 100)
        setupTabBar()
    }
    
    func setupTabBar() {
        
        let vc = SinglesViewController()
        
        vc.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "Series")?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0)), tag: 0)
        
        let vc1 = createViewControllerC(vc: UIViewController(), itemName: "", itemImage: "Headspace")
        vc1.view.backgroundColor = .white
        
        let vc2 = createViewControllerC(vc: UIViewController(), itemName: "Profile", itemImage: "profileFinance")
        vc2.view.backgroundColor = .white
        
        viewControllers = [vc, vc1, vc2]
    }
    
    func createViewControllerC(vc: UIViewController, itemName: String, itemImage: String) -> UINavigationController {
        
        let item = UITabBarItem(title: itemName, image: UIImage(named: itemImage)?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0)), tag: 0)
        
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 0)
        
        let vc1 = UINavigationController(rootViewController: vc)
        vc1.tabBarItem = item
        
        return vc1
    }
}
