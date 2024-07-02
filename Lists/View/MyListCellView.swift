//
//  MyListCellView.swift
//  Lists
//
//  Created by Ayesha Khan on 02/07/24.
//

import SwiftUI

struct MyListCellView: View {
    
    let myList: MyLists
    
    var body: some View {
        HStack {
            Image(systemName: "line.3.horizontal.circle.fill")
                .font(.system(size: 32))
                .foregroundStyle(Color(hex: myList.colorCode))
            Text(myList.name)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
