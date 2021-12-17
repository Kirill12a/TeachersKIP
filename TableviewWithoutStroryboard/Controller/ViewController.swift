//
//  ViewController.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 12.12.2021.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var dataWithTeachers = UserData.dataWithTeachers
    private let cellIdentifire = "cellID"

    override func viewDidLoad() {
        print("Pfehrf")
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
//        cell?.teacherImage.image = dataWithTeachers[indexPath.row].image
        cell?.teacherImage.image = UIImage(named: dataWithTeachers[indexPath.row].image)

        cell?.teacherName.text = dataWithTeachers[indexPath.row].name
        cell?.teacherObjects.text = dataWithTeachers[indexPath.row].subject
        cell?.teacherRating.text = dataWithTeachers[indexPath.row].rating
        cell?.selectionStyle = .none // удаление серго цвета при нажатие 
         
        return cell ?? UITableViewCell()
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(dataWithTeachers[indexPath.row].image)
        print(dataWithTeachers[indexPath.row].rating)
        print(dataWithTeachers[indexPath.row].subject)
        print(dataWithTeachers[indexPath.row].name)
    
        let rootVc = PreferencesTeacherVC()
        
        rootVc.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Exit", style: .plain, target: self, action: #selector(dismis))
        
        rootVc.title = "Учитель: \(dataWithTeachers[indexPath.row].name)" // тайтл на втором экране
        rootVc.value = "\(dataWithTeachers[indexPath.row].subject)" // хз удалить потом
        rootVc.nameTeacher = "\(dataWithTeachers[indexPath.row].name)" // имя препода в переменную
        rootVc.imageNamed = "\(dataWithTeachers[indexPath.row].image)" // херня не робит
    
        let navVC = UINavigationController(rootViewController: rootVc)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true, completion: nil)
    }
    
        @objc private func dismis(){
            dismiss(animated: true, completion: nil)
        }
}





