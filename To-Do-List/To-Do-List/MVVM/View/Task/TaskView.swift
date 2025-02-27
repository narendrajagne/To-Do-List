//
//  TaskView.swift
//  To-Do-List
//
//  Created by Mobile2 on 26/02/25.
//

import SwiftUI

struct TaskView: View {
    
    @Binding var get_RowItems: RowItems
    @State var showSheet: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                get_RowItems.color
                    .ignoresSafeArea()
                List {
                    HStack{
                        Image(systemName: "circle")
                        Text(get_RowItems.task)
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: {
                            showSheet = true
                        }) {
                            Image(systemName: "plus")
                        }
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {

                        }) {
                            Image(systemName: "pencil")
                        }
                    }
                }
                .sheet(isPresented: $showSheet) {
                    Add_EditView(showSheet: $showSheet, rowItems: $get_RowItems)
                }
                .scrollContentBackground(.hidden)
                .background(Color.clear)
            }
        }
    }
}

#Preview {
    TaskView(get_RowItems: .constant(RowItems(id: UUID(), title: "", task: "", color: .clear)))
}
