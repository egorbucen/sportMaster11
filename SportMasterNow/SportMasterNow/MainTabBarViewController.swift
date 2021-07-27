//
//  MainTabBarViewController.swift
//  SportMasterNow
//
//  Created by Егор Буцень on 14.07.21.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var controllers = [UIViewController]()
        
        let vc1 = MainViewController()
        vc1.title = "Главная"
        vc1.tabBarItem = UITabBarItem(title: "Главная", image: UIImage(systemName: "homekit"), tag: 0)
        let vc1Nav = UINavigationController(rootViewController: vc1)
        controllers.append(vc1Nav)
        
        let vc2 = SearchViewController()
        vc2.title = "Поиск"
        vc2.tabBarItem = UITabBarItem(title: "Поиск", image: UIImage(systemName: "magnifyingglass.circle"), tag: 1)
        let vc2Nav = UINavigationController(rootViewController: vc2)
        controllers.append(vc2Nav)
        
        let vc3 = BrandViewController()
        vc3.title = "Бренды"
        vc3.tabBarItem = UITabBarItem(title: "Бренды", image: UIImage(systemName: "tag.fill"), tag: 2)
        let vc3Nav = UINavigationController(rootViewController: vc3)
        controllers.append(vc3Nav)
        
        let vc4 = FavoritesViewController()
        vc4.title = "Избранное"
        vc4.tabBarItem = UITabBarItem(title: "Избранное", image: UIImage(systemName: "suit.heart.fill"), tag: 3)
        let vc4Nav = UINavigationController(rootViewController: vc4)
        controllers.append(vc4Nav)
        
        let vc5 = ProfileViewController()
        vc5.title = "Профиль"
        vc5.tabBarItem = UITabBarItem(title: "Профиль", image: UIImage(systemName: "person.fill"), tag: 4)
        let vc5Nav = UINavigationController(rootViewController: vc5)
        controllers.append(vc5Nav)
     

    }
    

}
