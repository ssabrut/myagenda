//
//  ListViewModel.swift
//  MyAgenda
//
//  Created by MacBook Pro on 15/03/22.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [Item] = []
    
    init() {
        setItems()
    }
    
    func setItems() {
        let newItems = [
            Item(title: "This is the first item!", isCompleted: false),
            Item(title: "This is the second item!", isCompleted: true),
            Item(title: "This is the third item!", isCompleted: false),
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = Item(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: Item) {
//        if let index = items.firstIndex { (existingItem) -> Bool in
//            return existingItem.id == item.id
//        } {
//
//        }
        
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
    }
}
