//
//  MainTabBarFactory.swift
//  MusicCabinet
//
//  Created by Alexander on 09.01.2023.
//

import UIKit

class MainTabBarFactory {
    
    func create() -> UIViewController {
        
        let searchController = SearchViewController()
        let searchItem = MainTabBar.Item(
            controller: UINavigationController(rootViewController: searchController).setPrefersLargeTitles(),
            title: "Search",
            systemItem: .search
        )
        
        let historyViewController = HistoryViewController()
        let historyItem = MainTabBar.Item(
            controller: UINavigationController(rootViewController: historyViewController).setPrefersLargeTitles(),
            title: "History",
            systemItem: .history
        )
        historyViewController.delegate = searchController
        
        let mainTabBar = MainTabBar(items: [searchItem, historyItem])
        return mainTabBar
    }
    
}

extension UINavigationController {
    func setPrefersLargeTitles(_ value: Bool = true) -> Self {
        navigationBar.prefersLargeTitles = true
        return self
    }
}
