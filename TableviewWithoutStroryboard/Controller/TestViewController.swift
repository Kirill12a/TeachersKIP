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

          CellView(name: "Kiko", lang: "Swift")
        }
      }
      .navigationTitle("Создатели")
      }
    }

}

struct CellView: View {
  @State var name: String?
  @State var lang: String?
  var body: some View{
    HStack{
      Text(name!)
      Spacer()
      Text(lang!)
      Link("Руководитель", destination: URL(string: "https://github.com/Kirill12a")!)
    }
  }
}

struct TestViewController_Previews: PreviewProvider {
    static var previews: some View {
        TestViewController()
    }
}
