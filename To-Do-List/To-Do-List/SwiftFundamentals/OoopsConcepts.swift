//
//  OoopsConcepts.swift
//  To-Do-List
//
//  Created by Mobile2 on 19/03/25.
//

import UIKit
import Foundation

// OOPS CONCEPTS
/*
 Objects Oriented Programming Concepts , while making program in swift
 
 1. Objects
 2. Encapsulation
 3. Abstraction
 4. Inheritance
 5. Polymorphism

 */

// 1. Objects : Objects is an entity, it represent the blue print of app

class EducationProfessional {
    
    var student_Name: String
    
    
    init(name: String) {
        self.student_Name = name
    }
    
    func courseEnroll() {
        print("This course is enrolled by \(student_Name)")
    }
}

var objEdu = EducationProfessional(name: "John") // This is objEdu known as a objects of class Education, Education class can be accessed by objEdu Object.

// 2. Encapsulation : It Encapsualting the data/ It restirct the information

class Bank {
    
    private var balance: Int
    
    init(balance: Int) {
        self.balance = balance
    }
    
    func depositAmount(amount: Int) {
        balance += amount
    }
    
    func withdrawAmount(amount: Int) {
        balance -= amount
    }
    
    func getAvailableBalance() -> Int {
        return balance
    }
    
}

/* The above one is the example of Encapsulation , balance properties is restricted to access outside from class with the help of private keyword */

// 3. Abstration : It hide the complex implementation while access to another class

protocol Car {
    
    func startEngine ()
    func drivingCar ()
    func stopEngine ()
    
}

class Telsa : Car {
    
    func startEngine() {
        
    }
    
    func drivingCar() {
        
    }
    
    func stopEngine() {
        
    }
}

class BMW : Car {
    
    func startEngine() {
        
    }
    
    func drivingCar() {
        
    }
    
    func stopEngine() {
        
    }
}

class Main {
    
    var tesla = Telsa()
    var bmw = BMW()
    
    init(tesla: Telsa, bmw: BMW) {
        self.tesla = tesla
        self.bmw = bmw
    }
    
    func mainAPICall() {
        testTheCar(car: tesla)
        testTheCar(car: bmw)
    }
    
    func testTheCar(car: Car) {
        car.startEngine()
        car.drivingCar()
        car.stopEngine()
    }
}

// The above one is example of Abstraction where class Main doesn't any about class BMW and Tesla , Whats are implement der.

// 4. Inheritance

/* Inheritance :- The parent Class properties can me access and inheritance to child class */

class Shape {
    
    var area: Double
    
    init(area: Double) {
        self.area = area
    }
    
    func calculateArea(width: Double, height: Double) {
        
        area = width * height
        
    }
    
}

class Rectangle: Shape {
    
    override func calculateArea(width: Double, height: Double) {
        
        area = width * height
    }
}

// PolyMorphism : Means the one things have many forms :- it will be use in multiple way
/* write a system how to access payment thought UPI, CC, DC and Netbanking */

protocol Payment {
    
    func paymentSuccessful ()
    func paymentDecline ()
    func paymentFailed ()
}

class makePayment {
    
    func makePayment(with amount: Double) {
        
    }
}

class CreditCardPayment: makePayment, Payment {
    
    override func makePayment(with amount: Double) {
        
    }
    
    func paymentSuccessful() {
        print("✅ Payment Successful !")
    }
    
    func paymentDecline() {
        print("❌ Payment Decline By Bank.")
    }
    
    func paymentFailed() {
        print("😞 Payment Failed Due Slow Internet.")
    }
}

class UPIPayment: makePayment, Payment {
    
    override func makePayment(with amount: Double) {
        
    }
    
    func paymentSuccessful() {
        print("✅ Payment Successful !")
    }
    
    func paymentDecline() {
        print("❌ Payment Decline By Bank.")
    }
    
    func paymentFailed() {
        print("😞 Payment Failed Due Slow Internet.")
    }
}

class NetBankIngPayment: makePayment, Payment {
    
    override func makePayment(with amount: Double) {
        
    }
    
    func paymentSuccessful() {
        print("✅ Payment Successful !")
    }
    
    func paymentDecline() {
        print("❌ Payment Decline By Bank.")
    }
    
    func paymentFailed() {
        print("😞 Payment Failed Due Slow Internet.")
    }
}

class BankPayment {
    
    let creditCard = CreditCardPayment()
    let upiPayment = UPIPayment()
    let netBanking = NetBankIngPayment()
    
    func paymentSetup () {
        processPayment(payment: creditCard, amount: 500)
        processPayment(payment: upiPayment, amount: 300)
        processPayment(payment: netBanking, amount: 100)
    }
    
    func processPayment(payment: makePayment, amount: Double) {
        payment.makePayment(with: amount)
    }
    
}
