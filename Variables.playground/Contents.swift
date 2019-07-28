import Cocoa

// var numOfStopLights = "Four"

var numOfStopLights: Int = 4
// const
let numOfStopLigths: Int = 4

var population: Int
population = 5422

let townName = "Knowhere"

// interpolation
let townDescription = "\(townName) has a population of \(population) and \(numOfStopLigths) stoplights."

var message: String
//if population < 10000 {
//    message = "\(population) is a small town!"
//} else {
//    message = "\(population) is pretty big!"
//}
message = population < 10000 ? "\(population) is a small town!" : "\(population) is pretty big!"
print(message)

var hasPostOffice = true

if !hasPostOffice {
    print("where do we buy stamps?")
}
