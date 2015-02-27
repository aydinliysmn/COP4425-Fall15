// Playground - noun: a place where people can play

import UIKit


// Functions 

// No parameters, no return value
func myFunction ()
{
    println("myFunction")
}


// 1 parameter, no return value
func myFunction2 (myParameter: Int)
{
    println("myFunction2 and parameter value is : \(myParameter)")
}

// 1 parameter, has return value
func myFunction3 (myParameter: Int) -> Int
{
    println("myFunction3 and parameter value is : \(myParameter)")
    return myParameter * myParameter
}

// no parameter, has return value
func myFunction4 () -> String
{
    println("myFunction4")
    return "Hello world!"
}

myFunction()
myFunction2(20)
myFunction3(10)
myFunction4()

func sayHelloTo(name : String) -> String
{
    return "Hello " + name
}

let greetings = sayHelloTo("Hasan")
greetings

func sayHelloTo(name: String, surname : String)
{
    println("Hello \(name) \(surname)")
}

sayHelloTo("Hasan", "Soysal")

// External parameters

func sayHelloTo (name myName : String, age myAge: Int)
{
    println("Hey \(myName) you are \(myAge) years old")
}

sayHelloTo(name: "Hasan", age: 3)

func sayHello2(name: String , #age : Int)
{
    println("Hey \(name) you are \(age) years old")
}
sayHello2("Hasan", age: 23)


// functions with tuple

func findMinAndMax (numbers:Array<Int>) -> (min : Int?, max : Int?)
{
    var min = numbers.first
    var max = numbers.first
    for each in numbers
    {
        if each < min
        {
            min = each
        }
        if each > max
        {
            max = each
        }
    }
    return (min, max)
}

findMinAndMax([])
let myMinMax = findMinAndMax([1,23,4,-5,5,600,567])
myMinMax.min
myMinMax.max


// functions with default parameters

func joinMyName (name : String, to surname : String, joiner:String = " ") ->NSString
{
    return name + joiner + surname
}

joinMyName("Hasan", to: "Soysal", joiner: " ")
joinMyName("Hasan", to: "Merve", joiner: " ve ")
joinMyName("Hasan", to: "Merve")



func calculateNumbers (number1 : Float, #number2 : Float) -> (multiplication: Float, remaining : Float)
{
    return ( number1 * number2, number1 % number2)
}

let (m , r) = calculateNumbers(40, number2: 1.5)
m
r
let mAndR = calculateNumbers(40, number2: 3.4)
mAndR.multiplication
mAndR.remaining


// function as a parameter


func calculate (number1: Int, number2: Int, function:(Int, Int)->Int) ->Int
{
    return function(number1, number2)
}

func addition (number1 : Int, #number2 : Int) -> Int
{
    return number1 + number2
}

func multiplication (number1 : Int, #number2 : Int) -> Int
{
    return number1 * number2
}

func substraction (number1 : Int, #number2 : Int) -> Int
{
    return number1 - number2
}

calculate(100, 4, multiplication)
calculate(100, 4, addition)
calculate(100, 4, substraction)











