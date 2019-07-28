import Cocoa

let playground = "Hello, playground"
var mutablePlayground = "Hello, mutable playground"

mutablePlayground += "!"

for c in mutablePlayground {
    print(c)
}

let oneCoolDude = "\u{1F60E}"
let aAcute = "\u{0061}\u{0301}"
print(oneCoolDude, aAcute)

let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let firstFive = playground[start...end]

print(firstFive)
