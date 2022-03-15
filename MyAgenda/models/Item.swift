//
//  Item.swift
//  MyAgenda
//
//  Created by MacBook Pro on 15/03/22.
//

import Foundation

struct Item: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
