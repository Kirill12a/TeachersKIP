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
            
        }
    
  
    var value: String?
    var imageNamed: String?
    let isPortrait = UIDevice.current.orientation.isPortrait

    private func initilize(){
        
        let imageTeacher = UIImageView()
        guard let imageNamed = imageNamed else {return}
        imageTeacher.image = UIImage(named: imageNamed)

        
        
        
        let label = UILabel()
        label.text = "HEllO"
        
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(50)
            make.top.equalToSuperview().inset(100)
        }
        
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(sayHello), for: .touchUpInside)
        button.backgroundColor = .orange
        button.tintColor = .red
        button.setTitle("HU", for: .normal)
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(100)
            make.top.equalToSuperview().inset(150)
            }
        }
    
    @objc func sayHello(){
        print("Hello")
    }
}





