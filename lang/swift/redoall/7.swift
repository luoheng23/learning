
let play = "Hello, playground"
var mutablePlay = "Hello, mutable playground"
mutablePlay += "!"
mutablePlay.append("Hello")
// for c in mutablePlay.unicodeScalars {
//     print(c)
// }
let oneCoolDudt = "\u{1F60E}"
print(oneCoolDudt)
if "\u{0061}\u{0301}" == "\u{00E1}" {
    print("good")
}
let a = "\u{0061}\u{0301}"
let b = "\u{00E1}"
print(a.count, b.count)
let start = play.startIndex
let end = play.index(start, offsetBy: 4)
let fifth = play[end]
print(fifth)