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

    let teacherVC       =   TeachersViewController()

    let developersVC    =   DeveloperViewController()

    let newsVC          =   NewsViewController()

    let scheduleUI_View = ScheduleUIView()

    // ----------------
    let host = UIHostingController(rootView: developersVC) // for SUI

    let host_Schedule = UIHostingController(rootView: scheduleUI_View)
    // ----------------

    viewControllers = [
      setUpNavigationController(title: "Search", image: UIImage(systemName: "magnifyingglass.circle.fill"), rootViewController: teacherVC),
      setUpNavigationController(title: "Favourite", image: UIImage(systemName: "heart.circle.fill"), rootViewController: host),
      setUpNavigationController(title: "News", image: UIImage(systemName: "magnifyingglass.circle.fill"), rootViewController: newsVC), setUpNavigationController(title: "Schedule", image: UIImage(systemName: "magnifyingglass.circle.fill"), rootViewController: host_Schedule)
    ]

  }

  private func setUpNavigationController(title: String, image: UIImage?, rootViewController: UIViewController) -> UIViewController {
    let navigationViewController = UINavigationController(rootViewController: rootViewController)
    navigationViewController.tabBarItem.image = image
    navigationViewController.tabBarItem.title = title
    return navigationViewController
  }
}
