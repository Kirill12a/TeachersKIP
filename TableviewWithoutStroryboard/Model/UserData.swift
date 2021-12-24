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
                             name   :  "Докторов А.А",
                             subject:  "Физика",
                             rating: "4.0", // отвечает еще и за картинку
                             chet: "Списывать можно, но он на работах он ходит",
                             nature: "Хороший преподаватель, но бывает и строгий.",
                             homeWork: "Лучше делать, потому что за него можно получить оценки "
                             
                         ),
        
        ModelDataTeachers(   image  : Constants.Image.koval,
                             name   : "Кавальский И.В",
                             subject: "Базы данных",
                             rating : "4.0",
                             chet: "Злой",
                             nature: "Плохой человек",
                             homeWork: "Можно чилить"
                         ),
        
        ModelDataTeachers(   image  : Constants.Image.turin,
                             name   : "Тимонова A.В",
                             subject: "Информатика",
                             rating : "4.0",
                             chet: "Злой",
                             nature: "Плохой человек",
                             homeWork: "Можно чилить"
                         ),
        ModelDataTeachers(   image  :  Constants.Image.doctorT,
                             name   :  "Аканов А.Н",
                             subject:  "Физика",
                             rating: "4.0",
                             chet: "Злой",
                             nature: "Плохой человек",
                             homeWork: "Можно чилить"
                         ),
        
        ModelDataTeachers(   image  : Constants.Image.kovaTl,
                             name   : "Одигов И.В",
                             subject: "Базы данных",
                             rating : "4.0",
                             chet: "Злой",
                             nature: "Плохой человек",
                             homeWork: "Можно чилить"
                         ),
        
        ModelDataTeachers(   image  : Constants.Image.turiTn,
                             name   : "Диков Л.М",
                             subject: "Информатика",
                             rating : "4.0",
                             chet: "Злой",
                             nature: "Плохой человек",
                             homeWork: "Можно чилить"
                         ),]
}
