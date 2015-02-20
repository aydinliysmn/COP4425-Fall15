// Playground - noun: a place where people can play

import UIKit

//Compound Assignment Operators

// += 

var myInt = 7
myInt += 4

var myFloat = 3.4
myFloat += 2.9

// -= 

myInt -= 15
myInt -= -40

// 


//Comparison Operators
/*

Equal to (a == b)
Not equal to (a != b)
Greater than (a > b)
Less than (a < b)
Greater than or equal to (a >= b)
Less than or equal to (a <= b)
*/

var myInt2 = 73
var myBool = Double(myInt) == myFloat
myBool = myInt != myInt2
myBool = myInt2 >= myInt
myBool = myInt2 <= myInt

// Range Operators

for each in 1...100
{
    println("Hey Your value is \(each)")
}
// Half-Open Range Operator


for x in 1..<100
{
    println("Hey Your value is \(x)")
}

var limit = 17
for x in 1...limit
{
    println("\(limit-x)")
}

// Logical Operators
// && (AND)

var myScore = 100
var myScore2 = 30

if myScore != myScore2 && myScore > 80
{
    println("These two are true")
}

// || (OR)
if myScore == myScore2 || myScore < 80
{
    println("One of them is true")
}
else
{
    println("None of them is true, they are false")
}


//Collection Types
//Array

var myArray = []
myArray = [2,4,5,6,5]
myArray = ["Hello"]
myArray = [4.35, 432, "Hello"]

// Error
//var myArray2 : Array = []

var myArray2 : Array<Int> = []
var myArray3 : Array<String> = ["Hello"]
//Error
//myArray3 = [3] // 3 is integer, not string

// Optional Array

var myArray4 :Array<String>? = []
// Error
//myArray3 = nil  // it cannot be nil

//Error
//myArray4 = [3] // it is not string
myArray4 = nil // it is OK

// Optional does not mean that it contains any other variable type
myArray2 = [432,2342,423,432,2,4,2,34,2, -23,324,-24]
myArray2.count
myArray2.last // The last element
myArray2.first // The first element
myArray2.removeAtIndex(2)
myArray2.removeLast()
myArray2.insert(345, atIndex: 0)
myArray2.removeRange(1...4)
myArray2.append(54)


for each in myArray2
{
    println("Value is \(each)")
}
// Differs from

for each in 0..<myArray2.count  // This is range
{
    println("Value is \(each)")
    println("Value is \(myArray2[each])")
}

myArray2[0]
myArray2[1]
//Error
//myArray2[myArray2.count] // Out of bounds
// Örneğin 3 elemanlı bir Array var. Bunların index numarası 0, 1, 2
// Eğer array.count ile elemana ulaşmaya çalışırsam, hata verir çünkü array[3] diye bir şey yok

myArray2[myArray2.count-1] // this is the last element
// 





// DICTIONARY

var myDictionary = [:]

var myDictionary2 = ["name":"Hasan", "surname": "Soysal", "age": 28]
var myDictionary3 = [1: "Bir", 2:"İki", 100: "Yüz"]

myDictionary2["name"]
myDictionary3[100]
myDictionary2["parentName"] // it is nil because this dictionary is optional
myDictionary3[59]

//Error
//var myDictionary4 :Dictionary = [:]
var myDictionary5 :Dictionary<String, Int> = [:]
myDictionary5 = ["age": 29, "length": 192]
//Error
//myDictionary5 = [100 : 103]

myDictionary5["age"]
myDictionary5["ega"] // it is nil because my dictionary is optional


















