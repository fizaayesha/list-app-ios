//
//  ReminderCellView.swift
//  Lists
//
//  Created by Ayesha Khan on 02/07/24.
//

import SwiftUI
import SwiftData

struct ReminderCellView: View {
    let reminder: Reminder
    let eventHandler: (Event) -> Void

    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "circle")
                .font(.title2)
                .padding([.trailing], 5)
                .onTapGesture {
                    eventHandler(.onChecked(reminder, !reminder.isCompleted))
                }
            VStack {
                Text(reminder.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                if let notes = reminder.notes {
                    Text(notes)
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                HStack {
                    if let reminderDate = reminder.reminderDate {
                        Text(reminderDate.formatted())
                    }
                    if let reminderTime = reminder.reminderTime {
                        Text(reminderTime.formatted())
                    }
                }
                .font(.caption)
                .foregroundStyle(.gray)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }

    enum Event {
        case onChecked(Reminder, Bool)
        case onSelect(Reminder)
    }
}

struct ReminderCellViewContainer: View {
    
    @Query(sort: \Reminder.title) private var reminders: [Reminder]
    
    var body: some View {
        ReminderCellView(reminder: reminders[0], eventHandler: { _ in })
    }
}

#Preview { @MainActor in
    ReminderCellViewContainer()
        .modelContainer(previewContainer)
}
