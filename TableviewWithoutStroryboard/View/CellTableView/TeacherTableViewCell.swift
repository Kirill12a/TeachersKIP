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



  private let button = UIButton()
  private let name = UILabel()

  //MARK: - Сейчас это актуально
  private let imageTeacher  =   UIImageView()
  private let nameTeacher   =   UILabel()
  private let lessons       =   UILabel()

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)

//    contentView.addSubview(button)
    button.setTitle("Tap me", for: .normal)
    button.backgroundColor = .red
    button.addTarget(nil, action: #selector(didTapButton), for: .touchUpInside)

//    contentView.addSubview(name)
    name.text = "Азовцева В.В"

    //MARK: - Сейчас это актуально
    contentView.addSubview(imageTeacher)
    imageTeacher.image = UIImage(named: "p")

    contentView.addSubview(nameTeacher)
    nameTeacher.text = "Азовцева В.В"
    nameTeacher.font = UIFont(name: "Avenir Next Condensed", size: 21)
//    nameTeacher.textAlignment = .center

    contentView.addSubview(lessons)
    lessons.text = "Русский язык, Литература"
    lessons.font =  UIFont(name: "Cochin", size: 17)
    lessons.numberOfLines = 0
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  @objc func didTapButton(){
    print("hello")
  }

  override func layoutSubviews() {
    super.layoutSubviews()

//
//
//    button.snp.makeConstraints { make in
//      make.center.equalToSuperview()
//    }
//
//    name.snp.makeConstraints { make in
//      make.left.equalToSuperview().inset(2)
//      make.top.equalToSuperview().inset(3)
//    }

    imageTeacher.snp.makeConstraints { make in
      make.width.equalTo(contentView.bounds.size.width / 4)
      make.height.equalTo(contentView.bounds.height - 2)
      make.left.equalToSuperview().inset(4) // можно поиграться
      make.top.equalToSuperview()
    }

    nameTeacher.snp.makeConstraints { make in
      make.leading.equalTo(imageTeacher.snp_trailingMargin).offset(contentView.bounds.size.width / 8)
      make.trailing.equalToSuperview()
      make.top.equalToSuperview().inset(2)
    }


    lessons.snp.makeConstraints { make in
      make.leading.equalTo(imageTeacher.snp_trailingMargin).offset(contentView.bounds.size.width / 9) // тоже можно поиграться
      make.trailing.equalToSuperview()
      make.top.equalTo(nameTeacher.snp_bottomMargin).offset(contentView.bounds.size.height / 50)

    }



  }
}



