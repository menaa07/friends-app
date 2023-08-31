//
//  ContentView.swift
//  friendsss appp
//
//  Created by Mena Haitham on 31/08/2023.
//
import SwiftUI

struct ContentView: View {
    @StateObject private var friendManager = FriendManager()

    var body: some View {
        NavigationView {
            List {
                ForEach(friendManager.friends) { friend in
                    NavigationLink(destination: FriendDetailView(friend: $friendManager.friends[getIndex(for: friend)])) {
                        Text(friend.name)
                    }
                }
                .onDelete(perform: delete)
                .onMove(perform: move)
            }
            .navigationTitle("Friends")
            .toolbar {
                EditButton()
            }
        }
    }

    private func delete(at offsets: IndexSet) {
        friendManager.friends.remove(atOffsets: offsets)
    }

    private func move(from source: IndexSet, to destination: Int) {
        friendManager.friends.move(fromOffsets: source, toOffset: destination)
    }

    private func getIndex(for friend: Friend) -> Int {
        friendManager.friends.firstIndex { $0.id == friend.id } ?? 0
    }
}
