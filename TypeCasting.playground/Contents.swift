//: Playground - noun: a place where people can play

class MediaItem {
    var name: String
    init(name: String){
        self.name = name
    }
}

class Movie : MediaItem {
    var director : String
    init(name : String, director: String){
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist : String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Song(name: "s1", artist: "s1"),
    Movie(name: "m1", director: "d1"),
    Movie(name: "m2", director: "d2"),
    Song(name: "s1", artist: "s1"),
    Movie(name: "m3", director: "d3"),
    Song(name: "s1", artist: "s1")
]


//OBJECT INSTANCE CHECK >>>>>>>>>>>>>>>>>>>

var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie {
        movieCount+=1
    }else if item is Song{
        songCount+=1
    }
}

print(movieCount)
print(songCount)



//DOWNCASTING >>>>>>>>>>>>>>>>>>>

for item in library {
    if let movie = item as? Movie {
        print("Movie : \(movie.name)")
    } else if let song = item as? Song {
        print("Song : \(song.name)")
    }
}


//TYPE CASTING FOR any AND anyObject

var things = [Any]()
things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append((3.0, 5.0))
things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))
things.append({ (name: String) -> String in "Hello, \(name)" })

for thing in things {
    switch thing {
    case 0 as Int:
        print("zero as an Int")
    case 0 as Double:
        print("zero as a Double")
    case let someInt as Int:
        print("an integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("a positive double value of \(someDouble)")
    case is Double:
        print("some other double value that I don't want to print")
    case let someString as String:
        print("a string value of \"\(someString)\"")
    case let (x, y) as (Double, Double):
        print("an (x, y) point at \(x), \(y)")
    case let movie as Movie:
        print("a movie called \(movie.name), dir. \(movie.director)")
    case let stringConverter as (String) -> String:
        print(stringConverter("Michael"))
    default:
        print("something else")
    }
}


