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
        Text(user.name)
    }
}

#Preview {
    let user = User(id: "abc-123", name: "Test User")
    UserDetailView(user: user)
}
