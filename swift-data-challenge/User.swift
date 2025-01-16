//
//  User.swift
//  swift-data-challenge
//
//  Created by Brian Diesel on 1/16/25.
//

import Foundation
import SwiftData

@Model
class User: Codable {
    enum CodingKeys: CodingKey {
      case id, name, isActive, age, company, email, address, about, tags,  registered
    }

    var id: String
    var name: String
    var isActive: Bool
    var age: Int
    var company: String
    var email:  String
    var address: String
    var about: String
    //var registered: Date
    var registered: String
    var tags: [String]

   
    init(id: String, name: String, isActive: Bool, age: Int, company: String, email: String, address: String, about: String, registered: String, tags: [String]) {
        self.id = id
        self.name = name
        self.isActive = isActive
        self.age = age
        self.company = company
        self.email = email
        self.address = address
        self.about = about
        self.registered = registered
        //self.registered = Date(timeIntervalSince1970: TimeInterval(registered) ?? 0)
        self.tags = tags
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.isActive = try container.decode(Bool.self, forKey: .isActive)
        self.age = try container.decode(Int.self, forKey: .age)
        self.company = try container.decode(String.self, forKey: .company)
        self.email = try container.decode(String.self, forKey: .email)
        self.address = try container.decode(String.self, forKey: .address)
        self.about = try container.decode(String.self, forKey: .about)
        //self.registered = try container.decode(Date.self, forKey: .registered)
        self.registered = try container.decode(String.self, forKey: .registered)
        self.tags = try container.decode([String].self, forKey: .tags)
      }
    
    func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(id, forKey: .id)
      try container.encode(name, forKey: .name)
      try container.encode(isActive, forKey: .isActive)
    }
}


struct Friend: Codable{
    let id: String
    let name: String
}
