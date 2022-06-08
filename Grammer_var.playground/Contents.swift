import UIKit


var name: String = "G1"
var age: Int = 28

name
name = "지원"

age
age = 30

let one: Int = 1
let two: Int = 2

func sayHello(name: String) -> String {
    return "Nice to meet you, \(name)"
}

sayHello(name: "지원")

func introduce(name: String , age: Int) -> String {
    return "Hi, My name is \(name) , I'm \(age)"
}

introduce(name: name, age: age)

func add(a: Int , b:Int) -> Int{
    return a * b
}

add(a: 2, b: 3)

