//
//  Item.swift
//  MyAgenda
//
//  Created by MacBook Pro on 15/03/22.
//

import Foundation

// Immutable struct
struct Item: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> Item {
        return Item(id: id,title: title, isCompleted: !isCompleted)
    }
}
