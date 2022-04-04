//
//  TestViewController.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 04.04.2022.
//

import SwiftUI

struct TestViewController: View {
    var body: some View {
      NavigationView{
      List{
        Section("Разработчки") {

          CellView(positions: Position.teamLead.rawValue, nickname: "Kiko")
        }
      }
      .navigationTitle("Создатели")
      }
    }

}

enum Position: String{
  case teamLead
  case developer
  case design
  case ideas
}

struct CellView: View {
  @State var positions: Position.RawValue
  @State var nickname: String
  var body: some View{
    HStack{
      Text(nickname)
      Spacer()
      Link(positions, destination: URL(string: "https://github.com/Kirill12a")!)
    }
  }
}

struct TestViewController_Previews: PreviewProvider {
    static var previews: some View {
        TestViewController()
    }
}
