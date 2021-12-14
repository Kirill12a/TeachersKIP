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
            view.addSubview(button)
            button.setTitle(value, for: .normal)
            
        }
    
    var value: String?
    private lazy var button: UIButton = {
//        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 50))
        let button = UIButton()
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        button.backgroundColor = .black
        button.tintColor = .red
        
        view.addSubview(button)
        return button
    }()
    @objc private func buttonTapped(){
        print("Hello")
    }
    
}





