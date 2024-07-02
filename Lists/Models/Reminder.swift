//
//  Reminder.swift
//  Lists
//
//  Created by Ayesha Khan on 02/07/24.
//

import Foundation
import SwiftData

@Model
class Reminder {
    
    var title: String = ""
    var notes: String?
    var isCompleted: Bool = false
    var reminderDate: Date?
    var reminderTime: Date?
    
    var list: MyLists?
    
    init(title: String, notes: String? = nil, isCompleted: Bool = false, reminderDate: Date? = nil, reminderTime: Date? = nil, list: MyLists? = nil) {
        self.title = title
        self.notes = notes
        self.isCompleted = isCompleted
        self.reminderDate = reminderDate
        self.reminderTime = reminderTime
        self.list = list
    }
    
}
