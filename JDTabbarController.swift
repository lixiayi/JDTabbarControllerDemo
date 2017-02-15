//
//  JDTabbarController.swift
//  JDTabbarControllerDemo
//
//  Created by xiaoyi li on 17/2/15.
//  Copyright © 2017年 xiaoyi li. All rights reserved.
//

import UIKit

class JDTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        jdAddChildViewControllers()
    }

    
    func jdAddChildViewControllers() {
        let first = FirstViewController()
        var image1 = UIImage(named: "one")
        image1 = image1?.withRenderingMode(.alwaysOriginal)
        let firstTabbarItem = UITabBarItem(title: "第一页", image: image1, selectedImage: UIImage(named: "oneSelected"))
        
        first.view.backgroundColor = .red
        first.tabBarItem = firstTabbarItem
        
        let nav1 = BaseNavigationController()
        nav1.addChildViewController(first)
        
        
        let second = SecondViewController()
        var image2 = UIImage(named: "two")
        image2 = image2?.withRenderingMode(.alwaysOriginal)
        let secondTabbarItem = UITabBarItem(title: "第二页", image: image2, selectedImage: UIImage(named: "twoSelected"))
        second.tabBarItem = secondTabbarItem
        
        let third = ThirdViewController()
        var image3 = UIImage(named: "three")
        image3 = image3?.withRenderingMode(.alwaysOriginal)

        let thirdTabbarItem = UITabBarItem(title: "第三页", image: image3, selectedImage: UIImage(named: "threeSelected"))
        third.tabBarItem = thirdTabbarItem
        
        self.addChildViewController(nav1)
        self.addChildViewController(second)
        self.addChildViewController(third)
        

    }


}
