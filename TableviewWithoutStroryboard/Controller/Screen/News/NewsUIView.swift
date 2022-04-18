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
        .aspectRatio(contentMode: .fill)
        .frame(width: 130, height: 70)
        .background(.gray)
    } else{
      Image(systemName: "video")
        .resizable()
        .aspectRatio(contentMode: .fit)
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
          NavigationLink(destination: WebView(url: courses.link)) {
            Cell(image: courses.image, title: courses.title)
          }
          
        }
      }
      .navigationTitle("Новости")
      .onAppear{
        viewModel.fetch()
        print("fds")
      }
    }
  }
}

struct Cell: View {
  @State var image = ""
  @State var title = ""
  
  var body: some View {
    HStack{
      URLImage(urlString: image)
      Text(title)
        .bold()
    }
    .padding(3)
  }
}

struct NewsUIView_Previews: PreviewProvider {
  static var previews: some View {
    NewsUIView()
  }
}
