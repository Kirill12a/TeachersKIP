//
//  WebView.swift
//  TableviewWithoutStroryboard
//
//  Created by Kirill Drozdov on 17.04.2022.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {


  var url: String

  func makeUIView(context: Context) -> some UIView {
    guard let url = URL(string: self.url) else {return WKWebView()}
    let request = URLRequest(url: url)
    let wkWebBiew = WKWebView()
    wkWebBiew.load(request)
    return wkWebBiew
  }

  func updateUIView(_ uiView: UIViewType, context: Context) {
    
  }
}
