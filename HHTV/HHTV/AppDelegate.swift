//
//  AppDelegate.swift
//  HHTV
//
//  Created by HeHui on 2016/12/20.
//  Copyright © 2016年 Hawie. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        UITabBar.appearance().tintColor = UIColor.orange
        
        return true
    }

   
}

