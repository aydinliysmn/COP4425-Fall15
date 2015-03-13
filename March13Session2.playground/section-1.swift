// Playground - noun: a place where people can play

import UIKit

//Classes


class MyClass
{
    
}

let myClassVariable = MyClass()


class Car
{
    var speed : Int = 0
    var wheel : Int = 4
    var name : String = ""
}

var myCar = Car()
myCar.name = "BMW"
myCar.speed = 320

let mySecondCar = Car()
mySecondCar.name = "Mercedes"

// Init

class Vehicle {
    
    var name : String = ""
    var maximumSpeed : Int = 0
    var passengerCount : Int = 0
    
    init(){}
    init(vehicleName : String )
    {
        name = vehicleName
    }
    init(name : String, maxSpeed : Int)
    {
        self.name = name
        maximumSpeed = maxSpeed
    }
    init(name : String, maximumSpeed : Int = 320, passengerCount : Int = 3)
    {
        self.name = name
        self.maximumSpeed = maximumSpeed
        self.passengerCount = passengerCount
    }
    
    func move ()
    {
        println("The \(self.name) has started to move")
    }
}

var myVehicle = Vehicle(vehicleName: "BMW")
myVehicle.name
var myVehicle2 = Vehicle()
var myVehicle3 = Vehicle(vehicleName: "BMW")
var myVehicle4 = Vehicle(name: "BMW", maxSpeed: 200)
var myVehicle5 = Vehicle(name: "Mercedes", maximumSpeed: 100, passengerCount: 3)
myVehicle.move()


// Inheritance 

class Bike: Vehicle {
}

var myBike = Bike(name: "Bisan", maxSpeed: 30)
myBike.name
myBike.move()











