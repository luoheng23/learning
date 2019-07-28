import Cocoa

var str = "Hello, playground"

print("The maximum Int value is \(Int.max).")
print("The minimum Int value is \(Int.min).")

print(11%(-3))
print(-11%3)

var x = 10
x += 10

let y: Int8 = 120
// let z = y + 10
let z = y &+ 10

let d1 = 1.1
let d2: Double = 1.1

let d3: Float = 1.2

let d4 = d2 + d1
if 1.2 == 1.1 + 0.1 {
    print("ok")
}
