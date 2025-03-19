//
//  ModernConcurrency.swift
//  To-Do-List
//
//  Created by Mobile2 on 19/03/25.
//

import Foundation
import UIKit

// Key Features of Modern Concurrency in swift

/*

1. async and wait
2. Task & TaskGroup
3. Actors (Solves Data Races)
4. @MainActor (Ensures Main Thread Execution)
5. Structured Concurrency (async let) :- Concurrent API Calling
 
 
 // ******** 1. async and await *********
 
 * Allows asynchronous functions to be written in a natural, sequential manner.
 * Eliminates callback hell and improves code redability
 
 func fetchData() async -> String {
     return "Data received"
 }
 
 async func processRequest() {
    let data = await fetchData()
    print(data)
 }
 
*/

actor BankAccount {
    
    var balance: Int = 10
    
    func deposit(amount: Int) {
        balance += amount
    }
    
    func withdraw(amount: Int) {
        balance -= amount
    }
    
}

class example {
    
    var bankAccount = BankAccount()
    
    
    // async await
    
    func fetchData() async {
        
        Task {
            await bankAccount.deposit(amount:500)
        }
        
        Task {
            await bankAccount.withdraw(amount:200)
        }
        
    }
}
