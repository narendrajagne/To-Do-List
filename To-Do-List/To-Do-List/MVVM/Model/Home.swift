//
//  Home.swift
//  To-Do-List
//
//  Created by Mobile2 on 26/02/25.
//

import Foundation
import SwiftUI

struct RowItems: Identifiable {
    
    let id: UUID
    let title: String
    let task: String?
    let color: Color
    
    static func getRows() -> [RowItems] {
        
        return [
                RowItems(id: UUID(), title: "Inbox", task: "1", color: .red),
                RowItems(id: UUID(),title: "Work", task: "3", color: .yellow),
                RowItems(id: UUID(),title: "Family", task: "4", color: .green),
                RowItems(id: UUID(),title: "Professional", task: "2", color: .blue),
                RowItems(id: UUID(),title: "Shopping", task: "5", color: .purple)
            ]
    }
    
    static func getTodayTask() -> [RowItems] {
        
        return [
                RowItems(id: UUID(), title: "Inbox", task: "Start making presentation", color: .red),
                RowItems(id: UUID(),title: "Work", task: "Buy a milk", color: .yellow),
                RowItems(id: UUID(),title: "Family", task: "Don't forget to pick up Mickel from school", color: .green),
                RowItems(id: UUID(),title: "Professional", task: "Buy a chocolate for Charlotte", color: .blue),
                RowItems(id: UUID(),title: "Shopping", task: "Buy New T-shirt", color: .purple)
            ]
    }
}
