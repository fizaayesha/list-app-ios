//
//  ListsApp.swift
//  Lists
//
//  Created by Ayesha Khan on 01/07/24.
//

import SwiftUI
import SwiftData

@main
struct Lists: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                MyListsScreen()
            }
            .modelContainer(for: [MyLists.self])
        }
    }
}
