var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Nothing to see here")
}

for character in "Dog!" {
    print(character)
}

let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "\u{65}\u{301}"

if eAcute == combinedEAcute {
    print("They are equal !")
}

let greeting = "Hello, world!"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
var beginning = greeting[..<index]
beginning.insert("h", at: beginning.startIndex)
let newString = String(beginning)
print(beginning, newString, index, greeting)

var threeDoubles = Array(repeating: 0.0, count: 3)
print(threeDoubles)

let array = ["a", "b"]
var a = array
a[0] = "c"
print(a)

var letters = Set<Character>()
letters.insert("a")
print(letters)

var favoriteGenres: Array = [1,2,3,4,5]
print(favoriteGenres)

for tickMark in stride(from: 0, to: 60, by: 5) {
    print(tickMark, terminator: " ")
}
print()

func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
print(greet(person: "luo"))