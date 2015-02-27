// Playground - noun: a place where people can play

import UIKit


// Control Flows

//FOR-IN

for myVariable in 0...10
{
    println("My variable is : \(myVariable)")
}

for each in 0..<10
{
    println("My each value is : \(each)")
}

for var i = 0; i < 10 ; i++
{
    println("My i : \(i)")
}

// Loop throught array count

let names = ["Ömer", "Yasemin", "Ayşegül", "Sahir", "Arif", "Gökçe", "Yasin"]

for index in 0...names.count-1
{
    println("My index is :\(index), name is \(names[index])")
}

for name in names
{
    println("My name is \(name)")
}

//WHILE

//Example: Count down
var countDown:Int = 5
var sum = 1
while ( countDown > 0 )
{
    println("\(countDown)")
    sum *= countDown
    countDown--
}

sum



// If
// If-Else

if true
{
    println("Yes this is true")
}
if false
{
    println("No this is not true")
}

if 3<4
{
    println("less than")
}
if 3==4
{
    println("Equal")
}

if 3 != 4
{
    println("Not equal")
}
else
{
    println("Equal")
}


if 1 == 55 % 5
{
    println("The remaining is 1")
}
else
{
    println("The remaining is not 1")
}

let myName = "Hasan"

switch myName
{
    case "Ömer":
    println("Hello")
    
    case "Hasan":
    println("Hi")
    
    default:
    println("Selam")
}

enum Directions
{
    case Left, Right, Up, Down
}

let direction = Directions.Left
switch direction
{
case .Left :
    println("Left")
case .Right:
    println("Right")
case .Up:
    println("Up")
case .Down:
    println("Down")
}



// Switch with Range


let score : Int = 80

switch score
{
case 0...40:
    println("F")
case 40...60:
    println("C")
case 60..<80:
    println("B")
case 80...100:
    println("A")
    
default:
    println("Not scored")
}

//switch with tuples 

var point = (9,0)
// It is on origin?
switch point
{
case (0,0):
    println("It is on the origin")
default:
    println("It is not on the origin")
}

// It is on x-axis
switch point
{
case (let x, 0):
    println("It is on x-axis: \(x)")
    
default:
    println("It is not on the x-axis")
}

point = (0, 32)
switch point
{
case (0, _):
    println("It is on y-axis")
    
default:
    println("It is not on the x-axis")
}

// _ : Yoksay

var myTuple = (0, "Hasan")
var myOtherTuple :(Int, Int) = (9,7)
var myOtherTuple2 = (3,2)

switch myTuple
{
case (0, _):
    println("It is on y-axis")
    
default:
    println("It is not on the x-axis")
}

















