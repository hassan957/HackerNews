//
//  ContentView.swift
//  HackerNews
//
//  Created by BAHLCP on 12/06/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                HStack{
                    HStack {
                        NavigationLink(destination: DetailView(url: post.url)){
                            Text(String(post.points))
                            Text(post.title)
                        }
                    }
                }
            }
            .navigationTitle("H4XOR NEWS")
        }
        .onAppear{
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



