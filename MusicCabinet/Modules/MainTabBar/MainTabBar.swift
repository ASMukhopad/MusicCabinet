//
//  MainTabBar.swift
//  MusicCabinet
//
//  Created by Alexander on 09.01.2023.
//

import UIKit

final class MainTabBar: UITabBarController {
    
    struct Item {
        let controller: UIViewController
        let title: String
        let systemItem: UITabBarItem.SystemItem
    }
    let barItems: [Item]

    init(items: [Item]) {
        barItems = items
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder _: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = barItems.map { $0.controller }
        
        tabBar.items?.enumerated().forEach { (offset: Int, element: UITabBarItem) in
            element.title = barItems[offset].title
        }
        
    }

    override func tabBar(_: UITabBar, didSelect _: UITabBarItem) {
        let generator = UISelectionFeedbackGenerator()
        generator.selectionChanged()
    }
    
}
