//
//  ContentView.swift
//  swift-data-challenge
//
//  Created by Brian Diesel on 1/15/25.
//

import SwiftUI

struct User: Decodable {
    let id: String
    let name: String
}

struct Friend: Codable{
    let id: String
    let name: String
}

struct ContentView: View {
    @State private var users = [User]()
    
    var body: some View {
            List {
                ForEach(users, id: \.id) { user in
                    VStack(alignment: .leading) {
                        Text(user.name)
                    }
                }
            }.task {
                await loadData()
            }
    }
    
    func loadData() async {
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else {
            print("Invalid URL")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)

            if let decodedResponse = try? JSONDecoder().decode([User].self, from: data) {
                users = decodedResponse
            } else {
                print("Could not parse data")
            }
            // more code to come
        } catch {
            print("Invalid data")
        }
    }
}

#Preview {
    ContentView()
}
