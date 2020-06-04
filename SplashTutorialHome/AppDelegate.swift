//
//  AppDelegate.swift
//  SplashTutorialHome
//
//  Created by 小林聖人 on 2020/06/04.
//  Copyright © 2020 小林聖人. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.frame = UIScreen.main.bounds
        window?.rootViewController = SplashViewController(nibName: "SplashViewController", bundle: nil)
        window?.makeKeyAndVisible()
        return true
    }

}

