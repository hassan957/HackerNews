//
//  Results.swift
//  HackerNews
//
//  Created by BAHLCP on 12/06/2023.
//

struct Results: Decodable{
    let hits: [Post]
}


struct Post : Decodable , Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
