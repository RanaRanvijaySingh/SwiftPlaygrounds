//: Playground - noun: a place where people can play

import UIKit

struct Number {
    var value : String
    var a : Int
   
    
    subscript(index: Int) -> Int{
        get{
            return index * index
        }
    }
    
    
    subscript(index: String) -> String{
        get{
            return "Value is \(index)"
        }
    }
    
    
    subscript(index: Int, value : String) -> String{
        get{
            let square = index * index
            return "Square of \(index) is \(square), original value is \(value)"
        }
    }
}

var number = Number(value: "five", a: 5)

print(number[5])
print(number["Five"])
print(number[5,"five"])