//
//  MyLists.swift
//  Lists
//
//  Created by Ayesha Khan on 01/07/24.
//

import Foundation
import SwiftData

@Model
class MyLists {
    var name: String
    var colorCode: String
    @Relationship(deleteRule: .cascade)
    var reminders: [Reminder]=[]
    
    init(name: String, colorCode: String) {
        self.name = name
        self.colorCode = colorCode
    }
}
