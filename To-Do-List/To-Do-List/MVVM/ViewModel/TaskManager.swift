//
//  TaskManager.swift
//  To-Do-List
//
//  Created by Mobile2 on 18/03/25.
//

import Foundation

class TaskManager {
    
    let task: Task?
    let filter_Task: TaskFilter?
    
    init(task: Task?, filter_Task: TaskFilter?) {
        self.task = task
        self.filter_Task = filter_Task
    }
    
    func getFilterTask() -> [Task] {
        let all_Task = task?.fetchTasks()
        return filter_Task?.filterTasks(tasks: all_Task ?? [], strategy: CompletedTaskFilter()) ?? []
    }
}
