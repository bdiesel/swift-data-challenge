//
//  User.swift
//  swift-data-challenge
//
//  Created by Brian Diesel on 1/16/25.
//

import Foundation

struct User: Decodable, Hashable {
    let id: String
    let name: String
    let isActive: Bool
    let age: Int
    let company: String
    let email:  String
    let address: String
    let about: String
    let registered: String
    let tags: [String]
//    let friends: [Friend]
}


struct Friend: Codable{
    let id: String
    let name: String
}
