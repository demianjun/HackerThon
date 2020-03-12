//
//  AppDelegate.swift
//  200131_SecondHackaThon
//
//  Created by Demian on 2020/01/31.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()
    return true
  }

}

