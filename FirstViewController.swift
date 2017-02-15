//
//  FirstViewController.swift
//  JDTabbarControllerDemo
//
//  Created by xiaoyi li on 17/2/15.
//  Copyright © 2017年 xiaoyi li. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let btnFrmme = CGRect(x: 100, y: 100, width: 120, height: 44)
        let btn = UIButton(type: .custom)
        btn.frame = btnFrmme
        btn.setTitle("nav0>subV", for: .normal)
        btn.backgroundColor = .green
        btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        view.addSubview(btn)
        
    }
    
    func btnClick() {
        let fisrtSub = FirstSubViewController()
        self.navigationController?.pushViewController(fisrtSub, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
