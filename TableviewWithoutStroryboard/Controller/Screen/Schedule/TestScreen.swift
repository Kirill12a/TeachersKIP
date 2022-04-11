//
//  TestScreen.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 08.04.2022.
//

import SwiftUI
import SDWebImageSwiftUI

struct TestScreen: View {
  var body: some View {
      WebImage(url: URL(string: "https://github.com/Kirill12a/Site/files/8455237/default.pdf"))
      // Supports options and context, like `.delayPlaceholder` to show placeholder only when error
      .onSuccess { image, data, cacheType in
          // Success
          // Note: Data exist only when queried from disk cache or network. Use `.queryMemoryData` if you really need data
      }
      .resizable() // Resizable like SwiftUI.Image, you must use this modifier or the view will use the image bitmap size
      .placeholder(Image(systemName: "photo")) // Placeholder Image
      // Supports ViewBuilder as well
      .placeholder {
          Rectangle().foregroundColor(.gray)
      }
      .indicator(.activity) // Activity Indicator
      .transition(.fade(duration: 0.5)) // Fade Transition with duration
      .scaledToFit()
      .frame(width: 500, height: 700, alignment: .center)
  }
}

struct TestScreen_Previews: PreviewProvider {
    static var previews: some View {
        TestScreen()
    }
}
