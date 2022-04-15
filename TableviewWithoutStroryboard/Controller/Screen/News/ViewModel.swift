//
//  ViewModel.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 15.04.2022.
//

import Foundation
import SwiftUI

struct Course: Hashable, Codable {
  let albumID, id: Int
    let title: String
    let url, thumbnailURL: String

    enum CodingKeys: String, CodingKey {
        case albumID = "albumId"
        case id, title, url
        case thumbnailURL = "thumbnailUrl"
    }
}

class ViewModel: ObservableObject {

  @Published var courses: [Course] = []

  func fetch(){
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/photos") else {return}
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
      guard let data = data, error == nil else {return}

      do {
        let courses = try JSONDecoder().decode([Course].self, from: data)
        DispatchQueue.main.async {
          self.courses = courses
        }
      }catch{
        print(error.localizedDescription)
      }
    }
    task.resume()
  }
}
