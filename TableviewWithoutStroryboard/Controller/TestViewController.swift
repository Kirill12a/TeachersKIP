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

          CellView(image: "test", positions: Position.TeamLead.rawValue, nickname: "Kiko", link_Profile: "https://github.com/Kirill12a")
        }
      }
      .navigationTitle("Создатели")
      }
    }

}

enum Position: String{
  case TeamLead
  case Developer
  case Design
  case Ideas
}





struct CellView: View {
  @State var image:String
  @State var positions: Position.RawValue
  @State var nickname: String
  @State var link_Profile: String
  var body: some View{
    HStack{
      Image(uiImage: UIImage(named: image)!)
        .resizable()
        .cornerRadius(20)
        .frame(width: 50, height: 50)
      Text(nickname)
        .font(.headline)
        .padding(.leading)

      Spacer()
      Link(positions, destination: URL(string: link_Profile)!)
    }
  }
}




struct TestViewController_Previews: PreviewProvider {
    static var previews: some View {
        TestViewController()
    }
}
