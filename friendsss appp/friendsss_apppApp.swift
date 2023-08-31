//
//  friendsss_apppApp.swift
//  friendsss appp
//
//  Created by Mena Haitham on 31/08/2023.
//

import SwiftUI

@main
struct FriendsApp: App {
    @StateObject var friendManager = FriendManager()
    @State private var newFriend = Friend(name: "", description: "", attack: 0, defense: 0, type: .fire) // Create @State property

    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Friends", systemImage: "person.3")
                    }

                NewFriendView(newFriend: $newFriend) // Pass the newFriend binding here
                    .tabItem {
                        Label("Add Friend", systemImage: "plus.circle")
                    }
            }
            .environmentObject(friendManager)
        }
    }
}

