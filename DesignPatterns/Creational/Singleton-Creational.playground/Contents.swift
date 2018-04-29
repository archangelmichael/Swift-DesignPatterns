//: Playground - noun: a place where people can play

import UIKit

// Singleton class Vehicle
class Vehicle {
    static let sharedInstance = Vehicle()
    
    // private initialser
    private init() {}
    
    func getName() -> String {
        return "Car"
    }
}

Vehicle.sharedInstance.getName() // "Car"
    
//    • We use the let keyword to make sure that the shredInstance’s value will not change
//    • Don’t forget to add the private initialiser so as to prevent other classes from calling its default initializers

