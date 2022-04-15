//
//  NewsUIView.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 15.04.2022.
//

import SwiftUI


struct URLImage: View {
  let urlString: String

  @State var data: Data?
  var body: some View{
    if let data = data, let uiimage = UIImage(data: data) {
      Image(uiImage: uiimage)
        .resizable()
        .frame(width: 130, height: 70)
        .background(.gray)
    } else{
      Image("")
        .resizable()
        .frame(width: 130, height: 70)
        .background(.gray)
        .onAppear{
          fetchData()
        }
    }
  }
  private func fetchData(){
    guard let url = URL(string: urlString) else {return}
    let task = URLSession.shared.dataTask(with: url) { data, _, _ in
      self.data = data
    }
    task.resume()
  }
}
struct NewsUIView: View {

  @StateObject var viewModel = ViewModel()

    var body: some View {
      NavigationView{
        List{
          ForEach(viewModel.courses, id: \.self){courses in
            HStack{
              Image("")

              Text(courses.title)
                .bold()
            }
            .padding(3)
          }
        }
        .navigationTitle("Courses")
        .onAppear{
          viewModel.fetch()
        }
      }
    }
}

struct NewsUIView_Previews: PreviewProvider {
    static var previews: some View {
        NewsUIView()
    }
}

