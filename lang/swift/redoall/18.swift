
var str = "Hello, playground"

var playgroundGreeting = str
playgroundGreeting += "! How are you today?"
print(str, playgroundGreeting)

class GreekGod {
    var name: String
    init(_ name: String) {
        self.name = name
    }
}

struct Pantheon {
    var chiefGod: GreekGod
}

let hecate = GreekGod("Hecate")
let another = hecate
another.name = "AnotherHecate"
let pantheon = Pantheon(chiefGod: hecate)
let zeus = GreekGod("Zeus")
// pantheon.chiefGod = zeus
print(hecate.name, another.name)

let a = [1, 2, 3, 4]
var b = a
b[2] = 4
print(a, b)