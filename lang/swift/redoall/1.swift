
var name = "luo"
print("\(name)")

let explicit: Float = 70
print(explicit)

let label = "The width is "
let width = 94
let widthLabel = label + String(width)
print(label, width, widthLabel)
print(Int("94") ?? 0)
let max: Int
max = 3
print(max)

var (x, y, z) = (1.0, 2, "string")
print(x, y, z)

typealias audio = UInt16

var s: audio = 16
print(s + UInt16(16))