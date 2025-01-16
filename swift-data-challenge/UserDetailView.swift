//
//  UserDetailView.swift
//  swift-data-challenge
//
//  Created by Brian Diesel on 1/16/25.
//

import SwiftUI

struct UserDetailView: View {
    let user: User
    
    var body: some View {
        Group{
            VStack {
                Text("User Name")
                Text(user.name)
            }
            
            VStack{
                Text("Age")
                Text(String(user.age))
            }
            
            VStack{
                Text("Company")
                Text(String(user.company))
            }
            
            VStack{
                Text("Email")
                Text(String(user.email))
            }
            
            VStack{
                Text("Address")
                Text(String(user.address))
            }
            
            VStack{
                Text("About")
                Text(String(user.about))
            }
            
//            VStack{
//                Text("Registered")
//                Text(String(user.registered))
//            }
            VStack{
                Text("Tags")
                List(user.tags, id: \.self) { tag in
                    Text(tag)
                }
            }
        }
    }
}

#Preview {
    let user = User(
        id: "abc-123",
        name: "Test User",
        isActive: true,
        age: 21,
        company: "Acme Anvils",
        email: "test@example.com",
        address: "907 Nelson Street, Cotopaxi, South Dakota, 5913",
        about: "Occaecat consequat elit aliquip magna laboris dolore laboris sunt officia adipisicing reprehenderit sunt. Do in proident consectetur labore. Laboris pariatur quis incididunt nostrud labore ad cillum veniam ipsum ullamco. Dolore laborum commodo veniam nisi. Eu ullamco cillum ex nostrud fugiat eu consequat enim cupidatat. Non incididunt fugiat cupidatat reprehenderit nostrud eiusmod eu sit minim do amet qui cupidatat. Elit aliquip nisi ea veniam proident dolore exercitation irure est deserunt.",
        registered: "2015-11-10T01:47:18-00:00",
        tags: [
            "cillum",
            "consequat",
            "deserunt",
            "nostrud",
            "eiusmod",
            "minim",
            "tempor"
        ]
    )
    UserDetailView(user: user)
}
