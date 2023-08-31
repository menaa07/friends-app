//
//  NewFriendView.swift
//  friendsss appp
//
//  Created by Mena Haitham on 31/08/2023.
//

import SwiftUI

struct NewFriendView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject private var friendManager: FriendManager

    @Binding var newFriend: Friend // Use @Binding here

    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $newFriend.name)
                TextField("Description", text: $newFriend.description)
                Picker("Type", selection: $newFriend.type) {
                    ForEach(Friend.FriendType.allCases, id: \.self) { type in
                        Text(type.rawValue.capitalized).tag(type)
                    }
                }
                // Add more properties
            }
            .navigationTitle("New Friend")
            .navigationBarItems(trailing: Button("Save") {
                saveNewFriend()
            })
        }
    }

    private func saveNewFriend() {
        friendManager.addFriend(newFriend)
        presentationMode.wrappedValue.dismiss()
    }
}
 
