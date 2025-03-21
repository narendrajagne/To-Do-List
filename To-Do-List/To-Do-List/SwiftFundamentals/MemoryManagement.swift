//
//  MemoryManagement.swift
//  To-Do-List
//
//  Created by Mobile2 on 19/03/25.
//
import UIKit
import Foundation

class GCD {
    
    func downloadDataFromAPI () {
            
        DispatchQueue.main.async {
            print("This is main queue.")
        }
        
        DispatchQueue.global().sync {
            print("This is ")
        }
        
        let dispatchQueue = DispatchQueue(label: "", qos: .background)
        
        dispatchQueue.async {
            
        }
        
        let dispatchGroup = DispatchGroup()
        
        dispatchGroup.enter()
        DispatchQueue.global().async {
            dispatchGroup.leave()
        }
        
        dispatchGroup.enter()
        DispatchQueue.global().async {
            dispatchGroup.leave()
        }
        
        dispatchGroup.enter()
        DispatchQueue.global().async {
            dispatchGroup.leave()
        }
    }
}
