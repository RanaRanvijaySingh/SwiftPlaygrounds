//: Playground - noun: a place where people can play

var helloWorld = "Hello World!"

for char in helloWorld.characters {
    print(char)
}

print(helloWorld.characters.count)

helloWorld.append(" I am good")

print(helloWorld[helloWorld.startIndex])

let endIndex = helloWorld.index(before: helloWorld.endIndex)
print(helloWorld[endIndex])

print(helloWorld[helloWorld.index(after: helloWorld.startIndex)])


let indexOfW = helloWorld.index(helloWorld.startIndex, offsetBy: 6)
print(helloWorld[indexOfW])

let indexOfG = helloWorld.index(helloWorld.endIndex, offsetBy: -1)
print(helloWorld[indexOfG])

var welcome = "Hey what's up daak"
welcome.insert("!", at: welcome.endIndex)

welcome.remove(at: welcome.index(before: welcome.endIndex))

let range = welcome.index(welcome.endIndex, offsetBy: -2)..<welcome.endIndex
welcome.removeSubrange(range)


