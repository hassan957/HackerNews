//
//  NetworkManager.swift
//  HackerNews
//
//  Created by BAHLCP on 12/06/2023.
//

import Foundation

class NetworkManager : ObservableObject {
    @Published var posts = [Post]()
    
    func fetchData(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session=URLSession(configuration: .default)
            let dataTask = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData =  data {
                        do{
                             let result = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts=result.hits
                            }
                        }
                        catch{
                            print(error)
                        }
                    
                    }
                }
            }
            dataTask.resume()
        }
    }
}
