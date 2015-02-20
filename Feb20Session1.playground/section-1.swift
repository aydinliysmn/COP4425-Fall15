// Playground - noun: a place where people can play

import UIKit

"hassoy07@gmail.com"
"https://github.com/hasansoysal/COP4425-Fall15"
"http://goo.gl/DP5jLe"

//Değişken Tanımlama
//var
var myName = "Hasan"
var myName2:String = "Hasan"
myName = "Mehmet"


//let
let mySurname = "Soysal"

//error
//mySurname = "Soydaş"

var myInt = 8
myInt = 19
var myInt2 : Int = 7
var myFloat:Float = 4.4
var myDouble2 = 4.4
var myDouble : Double = 4.3
var myBool = true

/* My Comment */
// My Comment

//error
//var sum = myInt + myFloat

var sum = Float(myInt) + myFloat

// TUPLES
var myTuple = (1987, "Hasan")
myTuple.0
myTuple.1

var httpStatus = (404, "Page Not Found")
var myNameSurnameAge = ("Hasan", "Soysal", 28)

myNameSurnameAge.2


//OPTIONALS
// nil atamasının yapılıp yapılmayacağını belirtir
/*
There is a value, and it equals x
OR
There isn’t a value at all
*/
var myOptional = "Hello"

//Error
//myOptional = nil

var myOptional2:String? = "Hello"
myOptional2 = nil

var myOptional3:Array<String>? = []
myOptional3 = nil

var myOptional4 : Float = 3.2
//Error because it is non-optional variable
//myOptional4 = nil

var myString = "123"
var myString2 = "Hello"

var myConvertedInt = myString.toInt()
var myConvertedInt2 = myString2.toInt()
myConvertedInt// It is optional now and has value
myConvertedInt2 // It is optional now and has no value

// if let clauses

if let myNewVariable = myConvertedInt
{
    println("Heyy, it is \(myNewVariable)")
}

if let myNewVariable2 = myConvertedInt2
{
    println("Heyy, it is \(myNewVariable2)")
}
else
{
    println("Heyy, it is nil")
}


// OPERATORS

// = 

var myEqualOperator = 3
var myEqualOperator2 = myEqualOperator
var myEqualOperatorString = "Hello World"


// + 

var myInt4 = 5 + 3
var myDouble3 = 43.3 + 32.8
var myNameAndSurname = "Hasan" + " " + "Soysal"


// - 
myInt4 = 43 - 5
myDouble3 = myDouble2 - myDouble


// *

myInt4 = myInt2 * myInt
myDouble = myDouble * myDouble2

/* / */


myInt = myInt4 / myInt2

// % (Mod alma)

var kalan = myInt4 % 5


// ++ 
// --
var myInt5 = myInt4
myInt5
myInt5 = myInt4++
myInt5
myInt5 = ++myInt4
myInt5

var myInt6 = 20
myInt6--
myInt6








