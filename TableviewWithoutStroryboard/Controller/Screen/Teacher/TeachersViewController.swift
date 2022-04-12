//
//  ViewController.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 12.12.2021.
//

import UIKit
import SnapKit
import SwiftUI

//TeachersViewController

class TeachersViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {



  var tableView: UITableView = {
    var table = UITableView()
    table.register(TableViewCell.self, forCellReuseIdentifier: "CustomTableViewCell")
  return table
  }()
  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(tableView)
    tableView.delegate = self
    tableView.dataSource = self
  }

  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    tableView.frame = view.bounds
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 20
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as! TableViewCell
    return cell
  }

  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return view.bounds.size.height / 9
  }

}



