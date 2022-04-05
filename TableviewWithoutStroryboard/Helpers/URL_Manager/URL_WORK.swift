//
//  URL_WORK.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 05.04.2022.
//

import Foundation

/// Получение данных из сети и дальнейшая работа с ними
class URL_Work{

  static var session = URL_Work()
  private init?() {}

  func decodeJSON<T:Decodable>(apiURL: String, mode: T.Type, comletion: @escaping (T)->()) {

    guard let url = URL(string: apiURL) else { return }

    URLSession.shared.dataTask(with: url) { data, _ , error in
      if error != nil {
        print(error?.localizedDescription as Any)
      } else {
        let decoder = JSONDecoder()
        do {
          let result = try decoder.decode(mode.self, from: data!)
          comletion(result)
        } catch {
          print(error)
        }
      }
    }.resume()
  }
}





