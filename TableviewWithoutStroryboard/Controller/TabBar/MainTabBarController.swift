//
//  TabBarController.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 04.04.2022.
//

import Foundation



import UIKit
import SwiftUI
import WebKit
class MainTabBarController: UITabBarController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let teacherVC         =     TeachersViewController()

        let scheduleVC        =     ScheduleViewController()

    let newsVC            =     NewsViewController()

    let developersVC      =     DeveloperViewController()

    let testVC =  TestScreen()

    let hostTest = UIHostingController(rootView: testVC)
    let host = UIHostingController(rootView: developersVC) // for SUI

    viewControllers = [
      setUpNavigationController(title: "Преподы", image: UIImage(systemName: "person.3.sequence"), rootViewController: teacherVC),
      setUpNavigationController(title: "Расписание", image: UIImage(systemName: "tablecells"), rootViewController: scheduleVC),// тут поменял()
      setUpNavigationController(title: "Новости", image: UIImage(systemName: "paperplane"), rootViewController: newsVC),
      setUpNavigationController(title: "Создатели", image: UIImage(systemName: "hammer"), rootViewController: host)
    ]
  }

  private func setUpNavigationController(title: String, image: UIImage?, rootViewController: UIViewController) -> UIViewController {
    let navigationViewController = UINavigationController(rootViewController: rootViewController)
    navigationViewController.tabBarItem.image = image
    navigationViewController.tabBarItem.title = title
    return navigationViewController
  }
}
