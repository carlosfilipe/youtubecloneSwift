//
//  AppDelegate.swift
//  youtubeclone
//
//  Created by retina on 08/06/21.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let layout = UICollectionViewFlowLayout()
        
        window?.rootViewController = UINavigationController(rootViewController: HomeController(collectionViewLayout: layout))
                
        UINavigationBar.appearance().barTintColor = UIColor.rgb(230, 32, 31)
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        UIApplication.shared.statusBarStyle = .lightContent

        
        let statusBarBackgroundView = UIView()
        statusBarBackgroundView.backgroundColor = UIColor.rgb(194, 31, 31)
        
        window?.addSubview(statusBarBackgroundView)
        window?.addConstraintsWithFormat(format: "H:|[v0]|", views: statusBarBackgroundView)
        window?.addConstraintsWithFormat(format: "V:|[v0(40)]", views: statusBarBackgroundView)

        return true
    }

}

