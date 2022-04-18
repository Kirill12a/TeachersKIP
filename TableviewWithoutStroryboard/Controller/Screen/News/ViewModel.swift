//
//  ViewModel.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 15.04.2022.
//

import Foundation
import SwiftUI

//struct Course: Hashable, Codable {
//  let albumID, id: Int
//  let title: String
//  let url, thumbnailURL: String
//
//  enum CodingKeys: String, CodingKey {
//    case albumID = "albumId"
//    case id, title, url
//    case thumbnailURL = "thumbnailUrl"
//  }
//}

struct Course: Hashable, Codable {
  let link: String
  let image: String
  let title: String
}

class ViewModel: ObservableObject {

  @Published var courses: [Course] = []
  //https://api.npoint.io/ee9347a63ff438d21388
  open func fetch(){
    guard let url = URL(string: "https://api.npoint.io/ee9347a63ff438d21388") else {return}
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
