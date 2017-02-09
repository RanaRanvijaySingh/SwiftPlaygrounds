//: Playground - noun: a place where people can play


//PROPERTY REQUIREMENT ..............
protocol PersonProperties {
    var name: String { get set }
    var age : Int { get }
}

class Person: PersonProperties {
    internal var age: Int = 0
    internal var name: String = ""
    var profession : String?
}


let person = Person()
print(person.age)
print(person.name)
if let profession = person.profession {
    print(profession)
}else {
    print("Profession is not mentioned")
}

//METHOD REQUIREMENT  ..............
protocol SumProtocol {
    func sum(a : Int, b:Int ) -> Int
    static func sum(a: Int, b: Int, c: Int) -> Int
}

class Addition : SumProtocol {
    internal func sum(a: Int, b: Int) -> Int {
        return a + b
    }

    internal static func sum(a: Int, b: Int, c: Int) -> Int {
        return a+b+c
    }
}

let additionObject = Addition()
let sumOfTwoNumbers = additionObject.sum(a: 4, b: 5)
print("Sum is : \(sumOfTwoNumbers))")

//STATIC FUNCTION CALL
let sumOfThreeNumbers = Addition.sum(a: 4, b: 5,c: 8)
print("Sum is : \(sumOfThreeNumbers))")


//MUTATING METHOD REQUIREMENTS ..............
protocol Toggable{
    mutating func toggle()
}

enum OnOffSwitch : Toggable{
    case OFF, ON
    
    mutating func toggle() {
        switch self {
        case .OFF:
            self = OnOffSwitch.ON
        case .ON:
            self = OnOffSwitch.OFF
        }
    }
}

var toggleSwitch = OnOffSwitch.OFF
toggleSwitch == OnOffSwitch.ON
toggleSwitch.toggle()
toggleSwitch == OnOffSwitch.ON


//COMPOSITION EXAMPLE ...............

protocol Walkable{
    var name: String { get set }
    func walk(steps: Int)
}

class Human: Walkable{
    var name: String = "Human"
    func walk(steps: Int) {
        print("\(name) has walked \(steps) steps")
    }
}

class Dog : Walkable{
    var name: String = "Dog"
    func walk(steps: Int) {
        print("\(name) has walked \(steps) steps")
    }
    
    func bark(){
        print("Woof")
    }
}

class Playtime{
    func goForAWalk(walkable : Walkable) {
        print("\(walkable.name) is going for a walk")
        walkable.walk(steps: 11)
        if let dog = walkable as? Dog {
            dog.bark()
        }
    }
}

var playtime = Playtime()
var human = Human()
var dog = Dog()

playtime.goForAWalk(walkable: human)
playtime.goForAWalk(walkable: dog)



