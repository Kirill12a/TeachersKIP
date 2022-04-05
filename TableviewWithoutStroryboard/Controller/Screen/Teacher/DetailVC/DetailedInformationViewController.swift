//
//  PreferencesTeacherVC.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 13.12.2021.
//

import UIKit
import SnapKit
import SwiftGifOrigin

class DetailedInformationViewController: UIViewController {
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
  /* \*/            var value: String?           //
   /* \*/           var imageNamed: String?     // Картинка
    /* \*/          var nameTeacher: String?   // Имя учителя
     /* \*/         var starCount: String?    // количество звезд
      /* \*/        var chet: String?        // типо можно списать или нет
       /* \*/       var nature: String?     // харктер препода
        /* \*/      var homeWork: String?  // нужно ли делать дз или можно тупо чилить
    // ------------------ //
    
    
    private func initilize(){
        
        let imageAccountTeacher: UIImageView = {
            let img                    =    UIImageView()
            img.image                  =    UIImage.init(named: imageNamed!)
            img.backgroundColor        =    .red
            img.contentMode            =    .scaleAspectFill
            img.clipsToBounds          =    true
            return img
        }()
        
        view.addSubview(imageAccountTeacher)
        imageAccountTeacher.snp.makeConstraints { (make) in
//            make.top.equalTo(view).offset(view.bounds.height - view.bounds.width * 1.9)
            make.top.equalTo(84)
            make.centerX.equalTo(view.snp.centerX)
            make.height.equalTo(176)
            make.width.equalTo(212)
        }
        imageAccountTeacher.layer.cornerRadius = 30
        
        let imageTeachers: UIImageView = {
            let img                    =    UIImageView()
            img.image                  =    UIImage.init(named: starCount ?? String()) //
            img.contentMode            =    .scaleAspectFill
            img.clipsToBounds          =    true
            return img
            
        }()
        view.addSubview(imageTeachers)
        imageTeachers.snp.makeConstraints { make in
            make.top.equalTo(imageAccountTeacher.snp_bottomMargin).inset(-20)
            make.centerX.equalTo(view.snp.centerX)
            make.height.equalTo(21)
            make.width.equalTo(115)
        }
        
        
        let deceitTeacher  =  UILabel() // это лейбл с описанием препода
        deceitTeacher.text =  "\("Списать: \(chet ?? "")")"
        deceitTeacher.numberOfLines = 0
        deceitTeacher.textAlignment = .center
        deceitTeacher.font = .boldSystemFont(ofSize: 18)
        view.addSubview(deceitTeacher)
        deceitTeacher.snp.makeConstraints { make in
            make.top.equalTo(imageTeachers.snp_bottomMargin).inset(70)
            make.width.height.equalTo(250)
            make.centerX.equalToSuperview()
        }
        
        let homeWorkteacher = UILabel()
        homeWorkteacher.text            =   "\("ДЗ: \(homeWork!)")"
        homeWorkteacher.font            =   .boldSystemFont(ofSize: 18)
        homeWorkteacher.textAlignment   =   .center
        homeWorkteacher.numberOfLines   =   0
        view.addSubview(homeWorkteacher)
        homeWorkteacher.snp.makeConstraints { make in
            make.top.equalTo(deceitTeacher.snp_topMargin).inset(70)
            make.width.height.equalTo(250)
            make.centerX.equalToSuperview()
        }
        
        
        let characterTeacher             =      UILabel()
        characterTeacher.text            =      "\("Характер: \(nature!)")"
        characterTeacher.font            =      .boldSystemFont(ofSize: 18)
        characterTeacher.numberOfLines   =      0
        characterTeacher.textAlignment   =      .center
        view.addSubview(characterTeacher)
        characterTeacher.snp.makeConstraints { make in
            make.top.equalTo(homeWorkteacher.snp_topMargin).inset(70)
            make.width.height.equalTo(250)
            make.centerX.equalToSuperview()
        }
        
        
        let gitLink: UIImageView = {
            let img                      =      UIImageView()
            img.backgroundColor          =      .red
            img.contentMode              =      .scaleAspectFill
            img.clipsToBounds            =      true
            img.backgroundColor          =      .orange
            let tapGestureRecognizer     =      UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
            img.isUserInteractionEnabled =      true
            img.backgroundColor = .orange
            img.addGestureRecognizer(tapGestureRecognizer)
            img.loadGif(name: "git") // добавление gif
            return img
        }()
        
        view.addSubview(gitLink)
        gitLink.snp.makeConstraints { (make) in
            make.top.equalTo(characterTeacher.snp_bottomMargin).inset(76)
            make.centerX.equalTo(view.snp.centerX)
            make.height.equalTo(150)
            make.width.equalTo(150)
        }
    }
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer){
        _ = tapGestureRecognizer.view as! UIImageView
        if let url = URL(string: "https://github.com/Kirill12a") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil) // открытие репа на git
        }}
}


extension UIView {
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path    =   UIBezierPath(roundedRect: bounds,
                                     byRoundingCorners: corners,
                                     cornerRadii: CGSize(width: radius, height: radius))
        let mask    =   CAShapeLayer()
        mask.path   =   path.cgPath
        layer.mask  =   mask
    }
}
