//: Playground - noun: a place where people can play

import UIKit

// Protocol
protocol Fruit {
    func set(price: String?)
    func clone() -> Fruit
}

// Class Apple which implements the protocol
class Apple: Fruit {
    var count: Int
    var price: String?
    
    init(count: Int) {
        self.count = count
    }
    
    func set(price: String?) {
        self.price = price
    }
    
    // function definition for cloning the object
    func clone() -> Fruit {
        return Apple(count: self.count)
    }
}

// Create a prototype
let prototype = Apple(count: 4)

// Create a copy of existing object
let redApple: Apple = prototype.clone() as! Apple
redApple.count
// add own properties
redApple.set(price: "$2")
redApple.price

// Create a copy of existing object
let greenApple: Apple = prototype.clone() as! Apple
greenApple.count
// add own properties
greenApple.set(price: "$4")
greenApple.price

// • When you clone an object, all the properties of that object is copied to another object.
//• This design pattern should be used when you need to create an object without knowing the hierarchy of that class
