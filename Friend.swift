//
//  Friend.swift
//  friendsss appp
//
//  Created by Mena Haitham on 31/08/2023.
//

import Foundation

struct Friend: Identifiable, Codable {
    var id = UUID()
    var name: String
    var description: String
    var attack: Int
    var defense: Int
    var type: FriendType
    
    enum FriendType: String, CaseIterable, Codable {
        case fire
        case earth
        case water
        case air
        // Add more types
    }
}

