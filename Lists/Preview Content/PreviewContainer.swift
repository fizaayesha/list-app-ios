//
//  PreviewContainer.swift
//  Lists
//
//  Created by Ayesha Khan on 02/07/24.
//

import Foundation
import SwiftData


@MainActor
var previewContainer: ModelContainer = {
    
    let container = try! ModelContainer(for: MyLists.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
    
    for myList in SampleData.myLists {
        container.mainContext.insert(myList)
        myList.reminders = SampleData.Reminders
    }
    
    return container
    
}()

struct SampleData {
    
    static var myLists: [MyLists] {
        return [MyLists(name: "Reminders", colorCode: "#34C759"), MyLists(name: "Backlog", colorCode: "#AF52DE")]
    }
    
    static var Reminders: [Reminder] {
        return [Reminder(title: "Reminder 1", notes: "This is reminder 1 notes!", reminderDate: Date(), reminderTime: Date()), Reminder(title: "Reminder 2", notes: "This is a reminder 2 note")]
    }
}
