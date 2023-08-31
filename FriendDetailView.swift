//
//  FriendDetailView.swift
//  friendsss appp
//
//  Created by Mena Haitham on 31/08/2023.
//

import SwiftUI

struct FriendDetailView: View {
    @Binding var friend: Friend

    var body: some View {
        Form {
            TextField("Name", text: $friend.name)
            TextField("Description", text: $friend.description)
            // Add more properties
        }
        .navigationTitle("Edit Friend")
    
    }
}
