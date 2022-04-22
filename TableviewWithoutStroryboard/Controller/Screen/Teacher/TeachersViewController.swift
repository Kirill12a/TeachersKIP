//
//  ViewController.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 12.12.2021.
//

import UIKit
import SnapKit
import SwiftUI
import SDWebImage

//TeachersViewController

protocol AlertWork{
  func alertWorking(indexPath: IndexPath)->UIAlertController
}

class TeachersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AlertWork {

  private var array: [WelcomeElement] = []

  var tableView: UITableView = {
    var table = UITableView()
    table.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.identifire)
    return table
  }()

  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(tableView)
    tableView.delegate = self
    tableView.dataSource = self

    URL_Work.session?.decodeJSON(apiURL: "https://api.npoint.io/6d0ff1875b7004c3e330", mode: [WelcomeElement].self, comletion: { data in
      DispatchQueue.main.async {
        self.array = data
        print(self.array[0].gitLink)
        self.tableView.reloadData()

      }
    })
  }


  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    tableView.frame = view.bounds
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return array.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifire) as! TableViewCell
    cell.nameTeacher.text = array[indexPath.row].teacherName
    cell.lessons.text = array[indexPath.row].schoolSubject
    cell.imageTeacher.sd_setImage(with: URL(string: array[indexPath.row].image))
    return cell
  }

  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return view.bounds.size.height / 9
  }

  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    alertWorking(indexPath: indexPath)
  }

  func alertWorking(indexPath: IndexPath)->UIAlertController{
    let alert = UIAlertController(title: "\(array[indexPath.row].teacherName)", message: "1020 1120 920", preferredStyle: .alert)
    let actionalert = UIAlertAction(title: "Понятно", style: .cancel)
    alert.addAction(actionalert)
    present(alert, animated: true)
    return alert
  }
}




