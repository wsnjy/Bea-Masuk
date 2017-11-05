//
//  AppDelegate.swift
//  Bea Cukai
//
//  Created by Sanjaya Wisnu on 9/9/17.
//  Copyright © 2017 Sanjaya Wisnu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let backgroundNav =  UIImage.init(named: "backgroundNav")!
    let colorTitleAttributes = UIColor.init(red: 84/255, green: 137/255, blue: 231/255, alpha: 1)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        settingNavigationBarBackground()
        return true
    }

    func settingNavigationBarBackground() {
        
        let colorAtPixel : UIColor = (backgroundNav.getPixelColor(pos: CGPoint(x: 2, y: 2)))

        UINavigationBar.appearance().backgroundColor = colorAtPixel
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: colorTitleAttributes]
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().isTranslucent = true

    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }


}

