//
//  SOLID.swift
//  To-Do-List
//
//  Created by Mobile2 on 19/03/25.
//

import Foundation
import UIKit

/* SOLID Principle

S : Single Responsibility Principle
O : Open/Close Principle
L : Liskov Substitution Principle
I : Interface Seggregation Principle
D : Depandency Inversion Principle

*/

// S : Single Responsibility Principle

/* Every Class should have single reposibilty */

class CoredataManager {
    
    func fetchDataFromCoreData() {
        print("Fetch Data From CoreData")
    }
    
    func storeDataToCoreData() {
        print("Store Data to CoreData")
    }
    
    func delegateEntryFromCoreData () {
        print("Delegate data from CoreData")
    }
}

class NetworkService {
    
    func uploadDataToServer() {
        print("upload data Server")
    }
    
    func downloadDataFromServer() {
        print("Download data from server")
    }
}

// O : Open/Close Principle

/* Class should open for extension but close for modification
 
 class must not be change when new requirement comes
 
 */


protocol filterStrategy {
    func filters(tasks: [TaskModel]) -> [TaskModel]
}

class filterTask {
    func filterTaskWithStratgy(task: [TaskModel], strategy: filterStrategy) -> [TaskModel] {
        return strategy.filters(tasks: task)
    }
}

class CompleteTask: filterStrategy {
    func filters(tasks: [TaskModel]) -> [TaskModel] {
        return tasks.filter { $0.task_Status == "C" }
    }
}

class PendingTask: filterStrategy {
    func filters(tasks: [TaskModel]) -> [TaskModel] {
        return tasks.filter { $0.task_Status == "P" }
    }
}

// L : Liskov Substitution Principle

/* Subclass should not voilating rules of Parent Class */

protocol TaskProtocol {
    
    var name: String { get }
    func compelete()
}

class RegularClass: TaskProtocol {
    
    var name: String
    var isComplete: Bool
    
    init(name: String, isComplete: Bool) {
        self.name = name
        self.isComplete = isComplete
    }
    
    func compelete() {
        print("\(name) is Completed")
    }
}

class IrregularClass : TaskProtocol {
    var name: String
    var irregular: Bool
    
    init(name: String, irregular: Bool) {
        self.name = name
        self.irregular = irregular
    }
    
    func compelete() {
        irregular = true
        print("\(name) is Completed")
    }
}

// I : Interface Seggregation

/* Everythings should be seggregated , The protocol which will not uses , it suppose to be optional */

protocol AClassProtocol {
    func addTheData ()
    func removeThedata ()
}

protocol BClassProtocol {
    func sendDataToServer ()
    func receiveDataFromServer ()
}

class A: AClassProtocol {
    func addTheData() {
        
    }
    
    func removeThedata() {
        
    }
}

class B: BClassProtocol {
    func sendDataToServer() {
        
    }
    
    func receiveDataFromServer() {
        
    }
}

// D : Depandancy Inversetion
/*  Higher Level of Module does not depend upon Lower Level of Module */

protocol educationProtocol {
    func writeTheParegraph ()
}

class Education : educationProtocol {
    
    func writeTheParegraph() {
        
    }
}

class Student {
    
    let education: Education?
    
    init(education: Education?) {
        self.education = education
    }
    
    func getData() {
        
    }
}

/*  Modern Concurrency
 
 1. async await
 2. Task & Taskgroup
 3. Actor
 4. MainActor
 5. async let
 
 */
