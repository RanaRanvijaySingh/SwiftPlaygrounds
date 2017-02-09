//: Playground - noun: a place where people can play


//Example 1 <<<<<<<<<<<<<<<<<<<<<<<<<<<
var token : Int? = 4

//Force unwrapping
//print(token!)

//Null check and unwrapping with if condition.
if token != nil {
    print(token!)
}

//Optional chaining
if let newToken = token {
    print (newToken)
} else {
    print("newToken is nil")
}

//Example 2 <<<<<<<<<<<<<<<<<<<<<<<<<<<

class Person {
    var res: Res?
}

class Res {
    var numberOfPerson = 5
}

let man = Person()

//Calling a function on optional value.
if let roomCount = man.res?.numberOfPerson {
    print(roomCount)
}else {
    print("Either the res is nil")
}
