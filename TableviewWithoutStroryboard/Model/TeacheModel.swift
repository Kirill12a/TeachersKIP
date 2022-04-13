//
//  TeacheModel.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 12.04.2022.
//

import Foundation

// MARK: - WelcomeElement

struct WelcomeElement: Codable {
  let image: String
  let gitLink: String
  let teacherName, schoolSubject: String

  enum CodingKeys: String, CodingKey {
    case image = "Image"
    case gitLink = "GitLink"
    case teacherName = "TeacherName"
    case schoolSubject = "SchoolSubject"
  }
  
}
