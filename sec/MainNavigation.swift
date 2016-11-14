//
//  MainNavigation.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit
import Foundation
import SlideMenuControllerSwift

class MainNavigation {

    var rootViewController: UIViewController!
    
    lazy var mainController: UIViewController! = {
        return MainMenuViewController()
    }()

    var loginViewController: LoginViewController?
    
    init() {
        
        loginViewController = LoginViewController()
        loginViewController!.loginService = BasicAuthLoginService(appId: "4ae167d9-03d3-44d8-a345-3079454f5edc")
        loginViewController!.mainViewController = mainController
        
        rootViewController = UINavigationController(rootViewController: loginViewController!)
    }
    
    func logout() {
    
        if let loginViewController = loginViewController, mainViewController = loginViewController.mainViewController {
            
            LoginManager.sharedInstance.reset()
            
            mainViewController.dismissViewControllerAnimated(true, completion: {
            
                self.mainController = nil
                loginViewController.mainViewController = self.mainController
            })
        }
    }
		
}

