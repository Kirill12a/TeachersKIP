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
        ModelDataTeachers(   image      :   Constants.Image.doctor,
                             name       :   "Докторов А.А",
                             subject    :   "Физика",
                             rating     :   "4.0", // отвечает еще и за картинку
                             chet       :   "Можно, но на работах  ходит",
                             nature     :   "Хороший преподаватель, но бывает и строгий.",
                             homeWork   :   "Лучше делать, потому что за него можно получить оценки "
                         ),
        
        ModelDataTeachers(   image      :   Constants.Image.koval,
                             name       :   "Акопов В.Ф",
                             subject    :   "Математика",
                             rating     :   "4.0",
                             chet       :   "Можно легко",
                             nature     :   "Очень добрый преподаватель",
                             homeWork   :   "Можно не делать, но конспект пишите"
                         ),
        
        ModelDataTeachers(   image      :   Constants.Image.turin,
                             name       :   "Дубровин Е.Д",
                             subject    :   "ОБЖ",
                             rating     :   "4.0",
                             chet       :   "Можно легко ",
                             nature     :   "Очень интересно припадает материал",
                             homeWork   :   "Конспект пишите, он вам поможет "
                         ),
        ModelDataTeachers(   image      :   Constants.Image.doctorT,
                             name       :   "Тюрина К.А",
                             subject    :   "Информатика",
                             rating     :   "4.0",
                             chet       :   "легко(но будут вопросы)",
                             nature     :   "Добрая и веселый преподаватель ",
                             homeWork   :   "Нужно делать дз и писать конспект"
                         ),
        
        ModelDataTeachers(   image      :   Constants.Image.kovaTl,
                             name       :   "Метелкина Ю.С",
                             subject    :   "История",
                             rating     :   "4.0",
                             chet       :   "Можно легко",
                             nature     :   "Требовательная, но очень добрая и энергичная ",
                             homeWork   :   "Делать нужно и обязательно все "
                         ),
        
        ModelDataTeachers(   image      :   Constants.Image.turiTn,
                             name       :   "Мирецкая Е.А",
                             subject    :   "Обществознание",
                             rating     :   "4.0",
                             chet       :   "Можно легко",
                             nature     :   "Хороший и очень добрый преподаватель ",
                             homeWork   :   "Можно не делать"
                         ),]
}
