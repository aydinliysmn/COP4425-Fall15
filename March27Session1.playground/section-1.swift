// Playground - noun: a place where people can play

// PROTOCOLS

protocol MyProtocol
{
    func sayHello()

}

class MyClass {
    
    var name : String = "Ayşe"
    func sayMyName()
    {
        println("Hello \(name)")
    }
}

let myClass = MyClass()
myClass.name = "Hasan"
myClass.sayMyName()

class MySecondClass: MyClass, MyProtocol {
    
    func sayHello() {
        println("Hi \(name)")
    }
}
let secondClass = MySecondClass()
secondClass.sayMyName()
secondClass.sayHello()

protocol MyProtocol2
{
    var name: String {get set}
}

class  Person : MyProtocol2  {
    var name : String = ""
}

var me = Person()
me.name = "Hasan"
var name = me.name


// Inheritance
protocol MyProtocol3 : MyProtocol
{
    func howRyou () -> String
}

class Teacher: MyProtocol3 {
    func howRyou() -> String {
        return "Fine"
    }
    
    func sayHello ()
    {
        
    }
}

@objc protocol OptionalFunctionProtocol
{
    optional func powerNumber(number : Int, by : Int) -> Int
    func getSquare(number : Int ) -> Int
}

class MyNumber : OptionalFunctionProtocol {
    
    func getSquare(number: Int) -> Int {
        return number  * number
    }
}









