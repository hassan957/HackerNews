//
//  WebView.swift
//  HackerNews
//
//  Created by BAHLCP on 13/06/2023.
//

import Foundation
import SwiftUI
import WebKit

struct WebView : UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeURLString = urlString{
            if let url = URL(string: safeURLString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
           
            
        }
    }
    
}
