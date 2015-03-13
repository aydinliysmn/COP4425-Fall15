// Playground - noun: a place where people can play

import UIKit

class Point
{
    var x : Float = 0.0
    var y : Float = 0.0
    
    init(){}
    init(x : Float , y : Float)
    {
        self.x = x
        self.y = y
    }
}

class  Size {
    var width : Float = 0.0
    var height : Float = 0.0
    
    init(){}
    init(width : Float, height : Float)
    {
        self.width = width
        self.height = height
    }
    
}

class Rectangle {

    var origin : Point = Point()
    var size : Size = Size()
    var center : Point
    {
        get
        {
           var x = origin.x + size.width/2
            var y = origin.y + size.height/2
            return Point(x: x, y: y)
        }
        set
        {
           self.origin.x = newValue.x - self.size.width/2
            self.origin.y = newValue.y - self.size.height/2
        }
        
    }

    init(){}
    init(origin : Point, size : Size)
    {
        self.origin = origin
        self.size = size
    }
}


var myRect = Rectangle(origin: Point(x: 20, y: 40), size: Size(width: 200, height: 50))
myRect.origin.x
myRect.size.width = 300


myRect.center
myRect.origin
myRect.size

myRect.center = Point(x: 500, y: 500)
myRect.origin
myRect.size


// Will Set & Did Set 

class Square : Rectangle {
    
    init(origin : Point, length : Float)
    {
        super.init()
        self.origin = origin
        self.size = Size(width: length, height:length)
    }
    
    override var center : Point
    {
        willSet(value)
        {
            println("New Value : \(value.x): \(value.y)")
        }
        didSet
        {
            println("New Value : \(center.x): \(center.y)")
        }
    }
}

var myS = Square(origin: Point(x: 20, y: 20), length: 50)
myS.center





// 
class Person
{
    var father : Person? = nil
    var mother : Person? = nil
    
    var name : String = ""
    var birthDate : Int = 2015
    var age : Int
        {
        get
        {
            return 2015 - self.birthDate
        }
    }
    init(){}
    init(name : String , birthDate : Int)
    {
        self.name = name
        self.birthDate = birthDate
    }
}

class Me : Person {}

var me = Me(name: "Hasan", birthDate: 1987)
me.age

var father = Person(name: "Mustafa", birthDate: 1950)
var mother = Person(name: "Ayşe", birthDate: 1960)
me.father = father
me.mother = mother

me.father?.age
me.mother?.age


























