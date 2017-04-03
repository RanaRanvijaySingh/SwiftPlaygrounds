//: Playground - noun: a place where people can play

var str : String = "Hello, playground"
print (str)

str = "bhupi"
print(str)




//Constants
let constant : Int = 10;
print(constant);


//This is not allowed
//constant = 11





var abc = (1.2, "ABC", 2)
var floatValue = abc.0
var StringValue = abc.1


var (floatItem, stringItem,_) = abc
print (floatItem)
print (stringItem)


var xyz = (abc : "ABC" , mno : "MNO")
print (xyz.abc)


var str1: String? = "hello"
//var str2 = str1 {
//    print (str2)
//}

let noValue = "No Value"

let value1 = str1 ?? noValue
print(value1)



let value = str1 != nil ? str1! : noValue
print (value)




for i in 1...8 {
    print(i)
}

for i in 1..<5 {
    print(i)
}







