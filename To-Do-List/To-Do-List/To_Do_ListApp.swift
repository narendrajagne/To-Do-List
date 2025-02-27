//
//  To_Do_ListApp.swift
//  To-Do-List
//
//  Created by Mobile2 on 25/02/25.
//

import SwiftUI

@main
struct To_Do_ListApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView(selectedRowItems: RowItems(id: UUID(), title: "", task: "", color: .blue))
            //ContentView()
                //.environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
