//
//  MyListDetailScreen.swift
//  Lists
//
//  Created by Ayesha Khan on 02/07/24.
//

import SwiftUI
import SwiftData
struct MyListDetailScreen: View{
    let myList: MyLists
    @State private var title: String = ""
    @State private var isNewReminderPresented: Bool = false
    
    private var isFormValid : Bool{
        !title.isEmptyOrWhitespace
    }
    private func saveReminder(){
        let reminder = Reminder(title: title)
        myList.reminders.append(reminder)
    }
    var body: some View{
        VStack{
            List(myList.reminders){ reminder in
                Text(reminder.title)
            }
            Spacer()
            Button(action:{
                isNewReminderPresented=true
            },label:{
                Text("New Reminder")
            })
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }.alert("New Reminder", isPresented: $isNewReminderPresented){
                TextField("",text:$title)
                Button("Cancel", role: .cancel){}
            Button("Done"){
                if isFormValid { saveReminder()
                }
            }       
        }.navigationTitle(myList.name)
    }
} 

struct MyListDetailScreenContainer: View{
    @Query private var myLists:[MyLists]
    var body: some View{
        MyListDetailScreen(myList: myLists[0])
    }
}

#Preview { @MainActor in
    NavigationStack{
        MyListDetailScreenContainer()
    }
        .modelContainer(previewContainer)
}
