//
//  AppDelegate.swift
//  SaveElderProject
//
//  Created by Demian on 2020/01/15.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit
import Firebase
import UserNotifications
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        
//        Thread.sleep(forTimeInterval: 0.8)
        
        UNUserNotificationCenter.current().requestAuthorization(options: [UNAuthorizationOptions.badge, .sound, .alert]) { (status, error) in
            if status {
                UNUserNotificationCenter.current().delegate = self
            }
            print("status \(status)")
        }
        return true
    }
    // MARK: UISceneSession Lifecycle
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}
extension AppDelegate: UNUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        let content = notification.request.content
        let trigger = notification.request.trigger
        completionHandler([UNNotificationPresentationOptions.badge])
    }
    //노티를 클릭했을 때
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        let content = response.notification.request.content
        let trigger = response.notification.request.trigger
        completionHandler()
    }
}

