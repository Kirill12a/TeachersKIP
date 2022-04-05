//
//  TabBarController.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 04.04.2022.
//

import Foundation



import UIKit
import SwiftUI

class MainTabBarController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let searchVC      =   ViewController()
    let favouriteVC   =   TestViewController()

    let host = UIHostingController(rootView: favouriteVC)
    viewControllers = [
      setUpNavigationController(title: "Search", image: UIImage(systemName: "magnifyingglass.circle.fill"), rootViewController: searchVC),
      setUpNavigationController(title: "Favourite", image: UIImage(systemName: "heart.circle.fill"), rootViewController: host)
    ]

  }

  private func setUpNavigationController(title: String, image: UIImage?, rootViewController: UIViewController) -> UIViewController {
    let navigationViewController = UINavigationController(rootViewController: rootViewController)
    navigationViewController.tabBarItem.image = image
    navigationViewController.tabBarItem.title = title
    return navigationViewController
  }
}
