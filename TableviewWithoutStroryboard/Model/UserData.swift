//
//  UserData.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 13.12.2021.
//

import Foundation
import UIKit

class UserData {
    static var dataWithTeachers: [ModelDataTeachers] = [
        ModelDataTeachers(   image  :  Constants.Image.doctor,
                             name   :  "Дектров А.В",
                             subject:  "Физика", rating: "4.3"
                         ),
        
        ModelDataTeachers(   image  : Constants.Image.koval,
                             name   : "Кавальский И.В",
                             subject: "Базы данных",
                             rating : "4.0"
                         ),
        
        ModelDataTeachers(   image  : Constants.Image.turin,
                             name   : "Тимонова A.В",
                             subject: "Информатика",
                             rating : "5.0"
                         ),
        ModelDataTeachers(   image  :  Constants.Image.doctorT,
                             name   :  "Аканов А.Н",
                             subject:  "Физика", rating: "3.3"
                         ),
        
        ModelDataTeachers(   image  : Constants.Image.kovaTl,
                             name   : "Одигов И.В",
                             subject: "Базы данных",
                             rating : "4.0"
                         ),
        
        ModelDataTeachers(   image  : Constants.Image.turiTn,
                             name   : "Диков Л.М",
                             subject: "Информатика",
                             rating : "5.0"
                         ),]
}
