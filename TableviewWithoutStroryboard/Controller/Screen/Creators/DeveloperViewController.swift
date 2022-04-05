//
//  TestViewController.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 04.04.2022.
//

import SwiftUI


struct DeveloperViewController: View {
  
    var body: some View {
      NavigationView{
      List{
        Section("Разработчки") {
          CellView(image: "test", positions: Position.TeamLead.rawValue, nickname: "Kiko", link_Profile: "https://github.com/Kirill12a")

          CellView(image: "test4", positions: Position.Developer.rawValue, nickname: "bobermiha", link_Profile: "https://github.com/bobermiha")

        }

        Section("Дизайн"){
          CellView(image: "test3", positions: Position.Design.rawValue, nickname: "Shmadilubda", link_Profile: "https://github.com/Shmadilubda")

          CellView(image: "test2", positions: Position.Design.rawValue, nickname: "Stefaefka", link_Profile: "https://github.com/Stefaefka")
        }

        Section("Идеи"){
          CellView(image: "test4-1", positions: Position.Ideas.rawValue, nickname: "Madonna666", link_Profile: "https://github.com/Madonna666")
        }

      }.listRowSeparator(.visible) // мб change

      .navigationTitle("Участники")
        Spacer()

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
        DeveloperViewController()
    }
}
