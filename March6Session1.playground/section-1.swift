// Playground - noun: a place where people can play

import UIKit



//Variadic parameters 

func addNumbers  (number1 : Int, #number2: Int) -> Int
{
    return number1 + number2
}

addNumbers(3, number2: 2)

//Error because function has 2 parameter, not 3
//addNumbers(2, number2: 4, 7)

func addNumbers (numbers: Int...)->Int
{
    var sum:Int = 0
    for each in numbers
    {
        sum += each
    }
    return sum
}

addNumbers(2, 3, 4,5)
addNumbers(2, 3, 4,5, 5,6,3)
addNumbers(2)

func appendStrings (strings : String...)->String
{
    var allStrings :String = ""
    for each in strings
    {
        allStrings += each
    }
    return allStrings

}
appendStrings("Bir", "İki")
appendStrings("Bir", "İki", "Üç")


// INOUT

var myName = "Hasan"

func changeMyName (var name: String, #to : String)
{
    name = to
}

myName
changeMyName("Hasan", to: "Ayşe")
myName

func swapTwoInt(inout number1: Int, inout number2 : Int)
{
    var temp = number1
    number1 = number2
    number2 = temp
}

var a = 7
var b = 8
swap(&a, &b)
a
b



func decideForFunction (number1 : Int) -> () -> Bool
{
    func isLessThanZero () ->Bool
    {
        return number1 < 0
    }
    return isLessThanZero
}

var isMyNumberIsLessThanZero = decideForFunction(-1)
if isMyNumberIsLessThanZero()
{
    println("This is less than 0")
}
else
{
    println("This is not less than 0")
}

//Example
func stepForward (currentStep: Int)->Int
{
    return currentStep + 1
}
func stepBackward (currentStep: Int) -> Int
{
    return currentStep - 1
}

func countDownFrom (number : Int ) -> (Int)->(Int)
{
    return number < 0 ? stepForward : stepBackward
}

var myFunction = countDownFrom(30)
myFunction(30)
var myFunction2 = countDownFrom(-30)
myFunction2(-30)

// Write an enum that has two case, square and cube
// Write a function that takes an Int, returns its square
// Write a function that takes an Int, returns its x * x* x (cube)
// Write a function that takes an Int and an enum, returns a function type described above







