//
//  DetailView.swift
//  HackerNews
//
//  Created by BAHLCP on 13/06/2023.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "www.google.com")
    }
}

