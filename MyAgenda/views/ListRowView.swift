//
//  ListRowView.swift
//  MyAgenda
//
//  Created by MacBook Pro on 10/03/22.
//

import SwiftUI

struct ListRowView: View {
    
    let item: Item
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var item1 = Item(title: "This is the first item", isCompleted: false)
    static var item2 = Item(title: "This is the second item", isCompleted: true)
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
