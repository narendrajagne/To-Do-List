//
//  Add-EditView.swift
//  To-Do-List
//
//  Created by Mobile2 on 27/02/25.
//

import SwiftUI
import Foundation
import CoreData

struct Add_EditView: View {
    
    @Binding var showSheet: Bool
    @Binding var rowItems: RowItems
    @State private var selectedDate = Date()
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                TextField("Enter what you love to do", text: $rowItems.title)
                    .textFieldStyle(.roundedBorder)
                TextEditor(text: $rowItems.task)
                    .frame(height: 100)
                    .textEditorStyle(.plain)
                    .border(.gray, width: 0.5)
                    .cornerRadius(2)
                HStack {
                    DatePicker("Select a date", selection: $selectedDate, displayedComponents: .date)
                        .datePickerStyle(.compact)
                }
            }
            .padding()
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }, label: {
                        Text("Save")
                    })
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        showSheet.toggle()
                    }, label: {
                        Text("Cancle")
                    })
                }
            }
        }
    }
}

#Preview {
    Add_EditView(showSheet: .constant(false), rowItems: .constant(RowItems(id: UUID(), title: "", task: "", color: .pink)))
}
