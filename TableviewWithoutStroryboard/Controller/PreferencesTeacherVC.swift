//
//  PreferencesTeacherVC.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 13.12.2021.
//

import UIKit
import SnapKit

class PreferencesTeacherVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        print("Имя картинки\(imageNamed ?? "")")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        initilize()
    }
    
    //MARK: Varibals // переменные делегата данных 
    var value: String?
    var imageNamed: String?
    var nameTeacher: String?
    // ------------------ //
    
    private func initilize(){
        
        let NameTeacher  =  UILabel()
        NameTeacher.text =  nameTeacher
        view.addSubview(NameTeacher)
        NameTeacher.snp.makeConstraints { make in
            make.centerX.equalToSuperview() // по центу
            make.top.equalToSuperview().inset(view.bounds.height / 2) // и вниз
        }
        // ниже будет collectionView
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(sayHello), for: .touchUpInside)
        button.backgroundColor = .orange
        button.tintColor       = .red
        button.setTitle("HU", for: .normal)
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(100)
            make.top.equalToSuperview().inset(150)
        }
        
        let imageAccountTeacher: UIImageView = {
            let img                    = UIImageView()
            img.image                  = UIImage.init(named: imageNamed!)
//            img.backgroundColor        = UIColor(patternImage: UIImage(named: "back Small")!) // фон кипа
            img.backgroundColor        = .red
            img.contentMode            = .scaleAspectFill
            img.clipsToBounds          = true
            return img
        }()
        
        view.addSubview(imageAccountTeacher)
        imageAccountTeacher.snp.makeConstraints { (make) in
            make.top.equalTo(view).offset(view.bounds.height - view.bounds.width * 1.9)
            make.centerX.equalTo(view.snp.centerX)
//            make.height.equalTo(view.snp.width).multipliedBy(0.40)
//            make.width.equalTo(view.snp.width).multipliedBy(0.40)
            make.height.equalTo(176)
            make.width.equalTo(212)
        }
        imageAccountTeacher.layer.cornerRadius = 30
        
        
        
        let imageTeachers: UIImageView = {
            let img                    = UIImageView()
            img.image                  = UIImage.init(named: "Stars")
            img.contentMode            = .scaleAspectFill
            img.clipsToBounds          = true
            return img
        }()
        view.addSubview(imageTeachers)
        imageTeachers.snp.makeConstraints { make in
            make.top.equalTo(imageAccountTeacher).inset(200)
            make.centerX.equalTo(view.snp.centerX)
            make.height.equalTo(21)
            make.width.equalTo(115)
        }
        
        
        let teacher  =  UILabel() // это лейбл с описанием препола
        teacher.text =  "nameTeacher"
        view.addSubview(teacher)
        teacher.snp.makeConstraints { make in
            make.top.equalTo(imageTeachers).inset(40)
            make.height.equalTo(300)
            make.width.equalTo(300)
            make.centerX.equalToSuperview() // по центу
            make.top.equalToSuperview().inset(view.bounds.height / 2) // и вниз
        }
   
    }
    
    @objc func sayHello(){ // нажатие на кнопку
        print("Hello")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
}
