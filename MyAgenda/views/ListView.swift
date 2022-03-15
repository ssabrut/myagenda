//
//  ListView.swift
//  MyAgenda
//
//  Created by MacBook Pro on 10/03/22.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [Item] = [
        Item(title: "This is the first item!", isCompleted: false),
        Item(title: "This is the second item!", isCompleted: true),
        Item(title: "This is the third item!", isCompleted: false),
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
