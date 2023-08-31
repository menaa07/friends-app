//
//  FriendManager.swift
//  friendsss appp
//
//  Created by Mena Haitham on 31/08/2023.
//

import Foundation

import SwiftUI

class FriendManager: ObservableObject {
    @Published var friends: [Friend]

    init() {
        self.friends = [
            Friend(name: "Mena", description: "Description 1", attack: 10, defense: 8, type: .fire),
            Friend(name: "Fhakera", description: "Description 2", attack: 5, defense: 6, type: .earth),
            Friend(name: "Fatima", description: "Description 3", attack: 7, defense: 7, type: .fire)
        ]
    }

    func addFriend(_ friend: Friend) {
        friends.append(friend)
    }

    // ... other methods ...
}
