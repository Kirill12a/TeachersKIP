//
//  NewsUIView.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 15.04.2022.
//

import SwiftUI


struct URLImage: View {
  var body: some View{
    Image("")
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
                .frame(width: 130, height: 70)
                .background(.gray)
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

