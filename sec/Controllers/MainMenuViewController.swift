//
//  MainMenuViewController.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class MainMenuViewController: SimpleTabBarController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
		view.backgroundColor = Style.sharedInstance.backgroundColor
		
		let tab1 = LogisticsViewController()
		tab1.tabBarItem = UITabBarItem(title: "Logistics", image: UIImage(named: "DefaultMenuIcon.png"), tag: 0)
 
		let tab2 = LogisticsViewController()
		tab2.tabBarItem = UITabBarItem(title: "Logistics", image: UIImage(named: "DefaultMenuIcon.png"), tag: 1)
 
		tab1.behaviors.append(LogoutBehavior(viewController: tab1))
		tab2.behaviors.append(LogoutBehavior(viewController: tab2))

		viewControllers = [
            UINavigationController(rootViewController: tab1),
            UINavigationController(rootViewController: tab2),
        
		]
		
        
    }
}

