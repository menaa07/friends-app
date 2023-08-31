//
//  PersistenceManager.swift
//  friendsss appp
//
//  Created by Mena Haitham on 31/08/2023.
//

import Foundation

struct PersistenceManager {
    static let key = "friends"

    static func saveFriends(_ friends: [Friend]) {
        if let encodedData = try? JSONEncoder().encode(friends) {
            UserDefaults.standard.set(encodedData, forKey: key)
        }
    }

    static func loadFriends() -> [Friend] {
        if let data = UserDefaults.standard.data(forKey: key),
           let friends = try? JSONDecoder().decode([Friend].self, from: data) {
            return friends
        }
        return []
    }
}
