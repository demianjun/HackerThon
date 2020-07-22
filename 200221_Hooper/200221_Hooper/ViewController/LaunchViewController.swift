//
//  LaunchViewController.swift
//  200221_Hooper
//
//  Created by Demian on 2020/02/21.
//  Copyright © 2020 Demian. All rights reserved.
//

import UIKit
class LaunchViewController: UIViewController {

  var serviceManager = ServiceManager.shared
  let mainVC = MainViewController()
  let launchGif = UIImageView()
  
  static var launchStart = false
  
  override func viewDidLoad() {
    super.viewDidLoad()
    launchView()
    serviceManager.nbaData {
      self.rootVC()
    }
  }
  
  private func launchView() {
    view.addSubview(launchGif)
    view.backgroundColor = .white
    launchGif.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      launchGif.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
      launchGif.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
      launchGif.widthAnchor.constraint(equalToConstant: view.bounds.width * 1.5),
    ])
    launchGif.contentMode = .scaleAspectFill
    guard let launch = UIImage.gifImageWithName("basketball1") else { return }
    self.launchGif.image = launch
    
    UIView.animate(withDuration: 2.4, delay: 0.0, options: [], animations: {
      self.launchGif.transform = .init(translationX: -(self.view.frame.width * 0.55), y: 0)
      do { self.launchGif.transform = .identity }
    })
}
  
  func rootVC() {
    let mainVC = MainViewController()
    let favoriteVC = FavoriteViewController()
    let tabBarController = UITabBarController()
    let mainNaviController = UINavigationController(rootViewController: mainVC)
    
    tabBarController.viewControllers = [mainNaviController, favoriteVC]
    tabBarController.tabBar.items?[0].title = "NBA Teams"
    tabBarController.tabBar.items?[0].image = UIImage(named: "nbalogo")
    
    tabBarController.tabBar.items?[1].title = "My Player"
    tabBarController.tabBar.items?[1].image = UIImage(named: "heart_black")
    UITabBar.appearance().tintColor = .black
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let window = UIWindow(frame: UIScreen.main.bounds)
    window.rootViewController = tabBarController
    window.makeKeyAndVisible()
    appDelegate.window = window
  }
  
  
}
