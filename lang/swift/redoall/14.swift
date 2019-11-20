
enum ProgrammingLanguage: String {
    case swift = "swift"
    case objectiveC = "objective-c"
    case c = "c"
    case cpp = "c++"
    case java = "java"
}

let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")
var (x, y, z) = (1, 2, 3)
(x, y, z) = (4, 5, 6)
print(x, y, z)