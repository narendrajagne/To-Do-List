//
//  TaskManager.swift
//  To-Do-List
//
//  Created by Mobile2 on 18/03/25.
//

import Foundation

class TaskManager {
    
    let task: TaskModel?
    let filter_Task: TaskFilter?
    
    init(task: TaskModel?, filter_Task: TaskFilter?) {
        self.task = task
        self.filter_Task = filter_Task
    }
    
    func getFilterTask() -> [TaskModel] {
        let all_Task = task?.fetchTasks()
        return filter_Task?.filterTasks(tasks: all_Task ?? [], strategy: CompletedTaskFilter()) ?? []
    }
}
