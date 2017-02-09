//: Playground - noun: a place where people can play

//COMPUTED PROPERTIES

extension Double{
    var km : Double {
        return self * 1000.0
    }
    
    var m: Double{
        return self
    }
    
    var cm : Double {
        return self / 100
    }
}

let marathon = 22.km + 136.m
print("Total in meters : \(marathon)")


//INITIALIZERS

struct Size {
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var point : Point
    var size : Size
}

//Default initializer
var point = Point(x:2,y:4)
var size = Size(width:10,height:20)
var rect = Rect(point: point, size: size)

//Extension
extension Rect{
    init(cornerA: Point,cornerB: Point, size: Size) {
        let xPoint = cornerA.x + cornerB.x
        let yPoint = cornerA.y + cornerB.y
        let center = Point(x: xPoint, y:yPoint)
        self.init(point: center, size: size)
    }
}
let cornerA = Point(x: 4.0, y: 4.0)
let cornerB = Point(x: 8.0, y: 14.0)
let defaultRectInitObject = Rect(point: point, size: size)
let extensionRectInitObject = Rect(cornerA:cornerA, cornerB: cornerB, size: size)
