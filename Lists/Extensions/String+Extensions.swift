//
//  String+Extensions.swift
//  Lists
//
//  Created by Ayesha Khan on 02/07/24.
//

import Foundation
extension String{
    var isEmptyOrWhitespace: Bool{
        trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
