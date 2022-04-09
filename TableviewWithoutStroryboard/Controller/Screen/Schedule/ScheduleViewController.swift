//
//  ScheduleViewController.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 09.04.2022.
//

import UIKit
import WebKit

class ScheduleViewController: UIViewController {

  var webView = WKWebView()

//http://www.fa.ru/org/spo/kip/Documents/raspisanie/2021-2022/аудитории.pdf
  private func loadWEBView(){
    guard let url = URL(string: "https://github.com/Kirill12a/linkForTeacherApp-/files/8457524/default.pdf") else {return}
    webView.load(URLRequest(url: url))


    // это было сделано для удаление loadView
    DispatchQueue.main.asyncAfter(deadline: .now()+2) { [self] in
      print("Не видно")
//      loadsView.removeFromSuperview()
    }
    view.addSubview(webView)
  }




  override func viewDidLoad() {
    super.viewDidLoad()




//    view.addSubview(loadsView)


    // Тестовая функция для получения данных
    let weekday = getDayOfWeek(today: "2022-04-10")
    print(weekday) // 1 = Wednesday
  }

  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    webView.frame = view.bounds
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("Я зашел опять")
    loadWEBView()
  }

  func getDayOfWeek(today:String)->Int {
    let formatter  = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    let todayDate = formatter.date(from: today)!
    let myCalendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)!
    let myComponents = myCalendar.components(.weekday, from: todayDate)
    let weekDay = myComponents.weekday
    return weekDay!
  }
}
