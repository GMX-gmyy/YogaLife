//
//  YLBaseTabBarController.swift
//  YogaLife
//
//  Created by 龚梦洋 on 2023/8/2.
//

import Foundation
import UIKit

class YLBaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        creatChildViewControllers()
    }
    
    private func creatChildViewControllers() {
        
        let vc1 = YLHomeViewController()
        vc1.tabBarItem.image = UIImage(named: "home")?.withRenderingMode(.alwaysOriginal)
        vc1.tabBarItem.selectedImage = UIImage(named: "homed")?.withRenderingMode(.alwaysOriginal)
        let navi1 = YLBaseNavigationController(rootViewController: vc1)
        
        let vc2 = YLRecordViewController()
        vc2.tabBarItem.image = UIImage(named: "record")?.withRenderingMode(.alwaysOriginal)
        vc2.tabBarItem.selectedImage = UIImage(named: "recorded")?.withRenderingMode(.alwaysOriginal)
        let navi2 = YLBaseNavigationController(rootViewController: vc2)
        
        viewControllers = [navi1, navi2]
        
    }
}
