
struct Town {
    var population = 5_422
    var numberOfStoplights = 4

    func printDescription() {
        print("Population: \(population);\nNumber of stoplights: \(numberOfStoplights)")
    }

    mutating func changePopulation(_ amount: Int) {
        population += amount
    }
}

class Monster {
    var town: Town?
    var name = "Monster"

    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}

class Zombie: Monster {
    var walksWithLimp = true

    final override func terrorizeTown() {
        town?.changePopulation(-10)
        super.terrorizeTown()
    }
}

var myTown = Town()
myTown.printDescription()
myTown.changePopulation(500)
myTown.printDescription()
let genericMonster = Monster()
genericMonster.town = myTown
genericMonster.terrorizeTown()


