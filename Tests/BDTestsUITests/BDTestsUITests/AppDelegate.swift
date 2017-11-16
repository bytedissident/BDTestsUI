//
//  AppDelegate.swift
//  BDTestsUITests
//
//  Created by Derek Bronston on 5/22/17.
//  Copyright © 2017 Derek Bronston. All rights reserved.
//

import UIKit
import BDTests

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //_ = BDTestsEnv().testEnv()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
      // BDTests(enviornmentName: nil).removeTest()
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        //_ = BDTestsEnv().testEnv()
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
    
    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        
        // _ = BDTestsEnv().testEnv()
        return true
    }
}

