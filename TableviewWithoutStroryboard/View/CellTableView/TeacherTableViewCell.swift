//
//  TeacherTableViewCell.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 12.04.2022.
//

import UIKit
import SwiftUI
import SnapKit

class TableViewCell: UITableViewCell {

  static let identifire = "CustomTableViewCell"

  //MARK: - Создание изображения
  lazy var imageTeacher: UIImageView = {
    var image = UIImageView()
    image.image = UIImage(named: "p")

    contentView.addSubview(image)
    return image
  }()

  //MARK: - Создание ФИО
  lazy var nameTeacher: UILabel = {
    var label = UILabel()
    label.font = UIFont(name: "Avenir Next Condensed", size: 21)
    contentView.addSubview(label)
    return label
  }()
  //MARK: - Создание предметов
  lazy var lessons: UILabel = {
    var label = UILabel()
    label.font =  UIFont(name: "Cochin", size: 17)
    label.numberOfLines = 0
    contentView.addSubview(label)
    return label
  }()

  //MARK: - Override
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
  }
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }


  //MARK: - layoutSubviews
  override func layoutSubviews() {
    super.layoutSubviews()

    //MARK: - Расположение изображения
    imageTeacher.snp.makeConstraints { make in
      make.width.equalTo(contentView.bounds.size.width / 4)
      make.height.equalTo(contentView.bounds.height - 2)
      make.left.equalToSuperview().inset(4) // можно поиграться
      make.top.equalToSuperview()
    }

    //MARK: - Расположение ФИО
    nameTeacher.snp.makeConstraints { make in
      make.leading.equalTo(imageTeacher.snp_trailingMargin).offset(contentView.bounds.size.width / 8)
      make.trailing.equalToSuperview()
      make.top.equalToSuperview().inset(2)
    }
    
    //MARK: - Расположение предметов
    lessons.snp.makeConstraints { make in
      make.leading.equalTo(imageTeacher.snp_trailingMargin).offset(contentView.bounds.size.width / 9) // тоже можно поиграться
      make.trailing.equalToSuperview()
      make.top.equalTo(nameTeacher.snp_bottomMargin).offset(contentView.bounds.size.height / 50)

    }
  }
}



