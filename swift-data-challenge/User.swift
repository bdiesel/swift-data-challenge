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
}


struct Friend: Codable{
    let id: String
    let name: String
}
