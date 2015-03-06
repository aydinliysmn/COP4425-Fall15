// Playground - noun: a place where people can play

import UIKit

//CLOSURES


func sayHelloTo (name : String, closure : ()->())
{
    println("Hello \(name)")
    closure()
}

sayHelloTo("Hasan", { () -> () in
    
    println("The end of function")
})

// closures continued as a seperate project

















