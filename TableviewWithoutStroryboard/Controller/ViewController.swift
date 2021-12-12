//
//  ViewController.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 12.12.2021.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
  
    
    
    private let cellIdentifire = "cellID"

    override func viewDidLoad() {
        super.viewDidLoad()
      
        tableView.register(UINib(nibName: "CellWithTeachers", bundle: nil), forCellReuseIdentifier: cellIdentifire)
        setupView()
        setupConstraints()
        
    }
    
        //MARK: Таблица
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: CGRect.zero, style: .grouped)


       return tableView
    }()
        
    
    var dataWithTeachers: [ModelDataTeachers] = [
        ModelDataTeachers(   image  :  Constants.Image.doctor!,
                             name   :  "Дектров А.В",
                             subject:  "Физика", rating: "4.3"
                         ),
        
        ModelDataTeachers(   image  : Constants.Image.koval!,
                             name   : "Кавальский И.В",
                             subject: "Базы данных",
                             rating : "4.0"
                         ),
        
        ModelDataTeachers(   image  : Constants.Image.turin!,
                             name   : "Тимонова A.В",
                             subject: "Информатика",
                             rating : "5.0"
                         ),
        ModelDataTeachers(   image  :  Constants.Image.doctorT!,
                             name   :  "Аканов А.Н",
                             subject:  "Физика", rating: "3.3"
                         ),
        
        ModelDataTeachers(   image  : Constants.Image.kovaTl!,
                             name   : "Одигов И.В",
                             subject: "Базы данных",
                             rating : "4.0"
                         ),
        
        ModelDataTeachers(   image  : Constants.Image.turiTn!,
                             name   : "Диков Л.М",
                             subject: "Информатика",
                             rating : "5.0"
                         ),]
    
    
    private func setupView(){
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func setupConstraints(){
        tableView.snp.makeConstraints { make in
            make.left.right.bottom.top.equalToSuperview().inset(0)
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataWithTeachers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifire) as? CellWithTeachers
        
        cell?.teacherImage.image = dataWithTeachers[indexPath.row].image
        cell?.teacherName.text = dataWithTeachers[indexPath.row].name
        cell?.teacherObjects.text = dataWithTeachers[indexPath.row].subject
        cell?.teacherRating.text = dataWithTeachers[indexPath.row].rating
        
        return cell ?? UITableViewCell()
    }
}


extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(dataWithTeachers[indexPath.row].image)
        print(dataWithTeachers[indexPath.row].rating)
        print(dataWithTeachers[indexPath.row].subject)
        print(dataWithTeachers[indexPath.row].name)

    }
}
