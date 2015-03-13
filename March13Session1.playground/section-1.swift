// Playground - noun: a place where people can play

import UIKit


enum Power
{
    case Square, Cube
}

func calculateSquareOf(number : Int ) -> Int
{
    return number * number
}

func calculateCubeOf(number : Int ) -> Int
{
    return number * number * number
}


func calculate(power : Power) -> (Int)->Int
{
    switch power
    {
    case .Square:
        return calculateSquareOf
    case .Cube:
        return calculateCubeOf
    }
}

var myCalculationFunction = calculate(.Square)
myCalculationFunction(9)


// CLOSUREs


func getPowerOf(number : Int, powerOf : (number : Int) -> Int)-> Int
{
    return powerOf(number: number)
}

getPowerOf(3, { (number) -> Int in

    println("Hello")
    return number * number
})

getPowerOf(3, { (number) -> Int in
    return number * number * number
})

getPowerOf(3, { (number) -> Int in
    return number * number * number * number
})




// Another example 

var myArray : Array<Int> = [1,2,4,6,32,6,1,0]

myArray.sort { (number1, number2) -> Bool in
    return number1 < number2
}

myArray.sort { (n1, n2) -> Bool in
    return n2 < n1
}


// MY SORT 

func sortMyNumber(numbers : Array<Int>, sortBy:(number1 : Int, number2 : Int) -> Bool) -> Array<Int>
{
    var mySortedArray : Array<Int> = numbers

    mySortedArray.sort({ (n1, n2) -> Bool in
        return sortBy(number1: n1, number2: n2)
    })

    return mySortedArray
}


sortMyNumber([12,4,6,19], { (number1, number2) -> Bool in
    return number1 < number2
})

sortMyNumber([12,4,6,19], { (number1, number2) -> Bool in
    return number1 > number2
})









