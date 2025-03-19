//
//  TaskValidator.swift
//  To-Do-List
//
//  Created by Mobile2 on 18/03/25.
//

import Foundation

class TaskValidator {
    
    func validateTaskName(name: String?) -> Bool {
        guard let _name = name, _name.count > 0 else {
            return false
        }
        return true
    }
    
}
