//
//  HomeView.swift
//  To-Do-List
//
//  Created by Mobile2 on 26/02/25.
//

import SwiftUI

struct HomeView: View {
    
    let rowItems = RowItems.getRows()
    let todayItems = RowItems.getTodayTask().sorted(by: {$0.id < $1.id })
    
    @State private var showSheet = false
    
    var body: some View {
        NavigationStack {
            List {
              Section {
                    ForEach(todayItems) { item in
                        HStack{
                            Image(systemName: "circle")
                            Text(item.task ?? "")
                                .fontWeight(.bold)
                            Spacer()
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(item.color)
                        }
                        .frame(height: 50)
                    }.onTapGesture {
                        showSheet = true
                    }
                  }.sheet(isPresented: $showSheet) {
                      TaskView()
                  }
                Section(header: Text("Tasks")) {
                    ForEach(rowItems) { item in
                        VStack(alignment: .leading) {
                            Text(item.title)
                                .fontWeight(.bold)
                            Text("\(item.task ?? "0") Task")
                                .foregroundColor(.gray)
                                .fontWeight(.light)
                        }
                        .listRowBackground(item.color)
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Today")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "ellipsis")
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
