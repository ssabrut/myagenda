//
//  MyAgendaApp.swift
//  MyAgenda
//
//  Created by MacBook Pro on 10/03/22.
//

import SwiftUI

@main
struct MyAgendaApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
