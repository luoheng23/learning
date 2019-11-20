
func printTable(_ data: [[String]]) {
    for row in data {
        print("| " + row.joined(separator: " | ") + " |")
    }
}

let data = [
    ["Joe", "30", "6"],
    ["Karen", "40", "18"],
    ["Fred", "50", "20"],
]

printTable(data)