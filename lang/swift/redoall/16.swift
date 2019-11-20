
struct Town {
    let region = "South"
    var population = 5_422
    var numberOfStoplights = 4

    enum Size {
        case small
        case medium
        case large
    }

    lazy var townSize: Size = {
        switch self.population {
        case 0...10_000:
            return .small
        case 10_001...100_000:
            return .medium
        default:
            return .large
        }
    }()

    func printDescription() {
        print("Population: \(population);\nNumber of stoplights: \(numberOfStoplights)")
    }

    mutating func changePopulation(_ amount: Int) {
        population += amount
    }
}

var myTown = Town()
let myTownSize = myTown.townSize
print(myTownSize)