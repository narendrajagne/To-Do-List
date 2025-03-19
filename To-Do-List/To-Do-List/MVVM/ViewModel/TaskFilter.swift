//
//  TaskFilter.swift
//  To-Do-List
//
//  Created by Mobile2 on 18/03/25.
//

import Foundation

/* This is the example of Open/Close Principle */

class TaskFilter {
    func filterTasks(tasks: [Task], strategy: TaskFilterStrategy) -> [Task] {
        return strategy.filter(tasks: tasks)
    }
}

protocol TaskFilterStrategy {
    func filter(tasks: [Task]) -> [Task]
}

class CompletedTaskFilter: TaskFilterStrategy {
    func filter(tasks: [Task]) -> [Task] {
        return tasks.filter { $0.task_Status == "Completed" }
    }
}

class PendingTaskFilter: TaskFilterStrategy {
    func filter(tasks: [Task]) -> [Task] {
        return tasks.filter { $0.task_Status == "Pending" }
    }
}

class RejectedTaskFilter: TaskFilterStrategy {
    func filter(tasks: [Task]) -> [Task] {
        return tasks.filter { $0.task_Status == "Rejected" }
    }
}

/*  */
