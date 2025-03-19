//
//  Task.swift
//  To-Do-List
//
//  Created by Mobile2 on 18/03/25.
//

import Foundation

struct TaskModel {
    
    var taskName: String?
    var assingTo: String?
    var task_Status: String?
    
    init(taskName: String?, assingTo: String?, task_Status: String?) {
        self.taskName = taskName
        self.assingTo = assingTo
        self.task_Status = task_Status
    }
    
    func fetchTasks() -> [TaskModel] {
        
       return [
            TaskModel(taskName: "Create Figma of TO-DO-App", assingTo: "John", task_Status: "Completed"),
            TaskModel(taskName: "Create CI/CD Pipeline", assingTo: "Mark", task_Status: "Pending"),
            TaskModel(taskName: "Write Program without SOLID", assingTo: "Tony", task_Status: "Rejected")
        ]
    }
}
