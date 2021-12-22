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
        
        
        let deceitTeacher  =  UILabel() // это лейбл с описанием препода
        deceitTeacher.text =  "\("Списать: Сложно " ?? "none")"
        deceitTeacher.textAlignment = .center
        deceitTeacher.font = .boldSystemFont(ofSize: 18)
        view.addSubview(deceitTeacher)
        deceitTeacher.snp.makeConstraints { make in

            
            make.top.equalTo(view.bounds.height / 2 - 190)
//            make.left.equalTo(view.bounds.width / 2 )
            make.width.height.equalTo(250)
            make.centerX.equalToSuperview()
        }
        
        let homeWorkteacher = UILabel()
        homeWorkteacher.text = "\("ДЗ: Можно ничего не делать")"
        homeWorkteacher.font = .boldSystemFont(ofSize: 18)
        homeWorkteacher.textAlignment = .center
        homeWorkteacher.numberOfLines = 0
        view.addSubview(homeWorkteacher)
        homeWorkteacher.snp.makeConstraints { make in
            make.top.equalTo(deceitTeacher.snp_topMargin).inset(40)
            make.width.height.equalTo(250)
            make.centerX.equalToSuperview()
        }
        
        
        let characterTeacher  =  UILabel()
        characterTeacher.text =  "\("Характер: Добрый, но не надо дерзить")"
        characterTeacher.font = .boldSystemFont(ofSize: 18)
        characterTeacher.numberOfLines = 0
//        characterTeacher.backgroundColor = .orange
        
        characterTeacher.textAlignment = .center
        view.addSubview(characterTeacher)
        characterTeacher.snp.makeConstraints { make in
            make.top.equalTo(homeWorkteacher.snp_topMargin).inset(40)
            make.width.height.equalTo(250)
            make.centerX.equalToSuperview()
        }
      
        
    }
    
    
    
    
    
    
    @objc func sayHello(){ // нажатие на кнопку
        print("Hello")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
}




extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
