//
//  MainTabBar.swift
//  SportMasterNow
//
//  Created by Егор Буцень on 14.07.21.
//

import UIKit

class MainTabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var controllers = [UIViewController]()
        
        let vc1 = VC1()
        vc1.tabBarItem = UITabBarItem(title: "person", image: UIImage(systemName: "cloud.sun"), tag: 0)
        let vc1nav = UINavigationController(rootViewController: vc1)
        controllers.append(vc1nav)
        vc1.title = "Погода"
        
        let vc2 = VC2()
        vc2.tabBarItem = UITabBarItem(title: "circle", image: UIImage(systemName:"network"), tag: 1)
        let vc2nav = UINavigationController(rootViewController: vc2)
        controllers.append(vc2nav)
        vc2.title = "Карта"
        
        let vc3 = VC3()
        vc3.tabBarItem = UITabBarItem(title: "car", image: UIImage(systemName:"wallet.pass"), tag: 2)
        let vc3nav = UINavigationController(rootViewController: vc3)
        controllers.append(vc3nav)
        vc3.title = "История"
        
        self.tabBar.barTintColor = UIColor.white
        self.tabBar.tintColor = UIColor.red
        self.tabBar.unselectedItemTintColor = UIColor.gray
        
        UITabBar.appearance().barTintColor = UIColor.white
        UITabBar.appearance().tintColor = UIColor.red
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
        
        self.viewControllers = controllers
        
    }

}
