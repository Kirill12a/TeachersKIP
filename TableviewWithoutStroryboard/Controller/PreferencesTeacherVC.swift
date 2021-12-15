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
        initilize()
        print("Имя картинки\(imageNamed ?? "")")
    }
    
    //MARK: Varibals
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
            let img              = UIImageView()
            
            img.image           = UIImage.init(named: imageNamed!)
            img.backgroundColor = .red
            img.contentMode     = .scaleAspectFill
            img.clipsToBounds   = true
            return img
        }()
        view.addSubview(imageAccountTeacher)
        imageAccountTeacher.snp.makeConstraints { (make) in
            make.top.equalTo(view).offset(72)
            make.centerX.equalTo(view.snp.centerX)
            make.height.equalTo(view.snp.width).multipliedBy(0.32)
            make.width.equalTo(view.snp.width).multipliedBy(0.32)
        }
        imageAccountTeacher.layer.cornerRadius = 30
    }
    
    @objc func sayHello(){
        print("Hello")
        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
    }
    
    
    
    
    
}
