//
//  TeacheModel.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 12.04.2022.
//

import Foundation

// MARK: - WelcomeElement

struct WelcomeElement: Codable {
    let TacherName, SchoolSubject: String
    let Image: String
    let GitLink: String
}
