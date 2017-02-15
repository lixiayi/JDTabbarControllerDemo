//
//  BaseNavigationController.swift
//  JDTabbarControllerDemo
//
//  Created by xiaoyi li on 17/2/15.
//  Copyright © 2017年 xiaoyi li. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func backBarItem() -> UIBarButtonItem {
        let btn = UIButton.init(type: .custom)
        btn.frame = CGRect.init(x: 0, y: 0, width: 50, height: 44)
        btn.addTarget(self, action: #selector(popToPre), for: .touchUpInside)
        btn.setImage(UIImage.init(named: "back"), for: .normal)
        btn.imageEdgeInsets = .init(top: 0, left: -30, bottom: 0, right: 0)
        return UIBarButtonItem.init(customView: btn)
        
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.viewControllers.count > 0 {
            let leftBarItem = backBarItem()
            viewController.navigationItem.leftBarButtonItem = leftBarItem
            viewController.hidesBottomBarWhenPushed = true

        }
        super.pushViewController(viewController, animated: true)
    }
    
    func popToPre()  {
        self.popViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
