
var volunteerCounts = [1,3,40,32,2,53,77,13]
volunteerCounts = volunteerCounts.sorted {$0 > $1}
print(volunteerCounts)

func addLight(_ hello: Int, _ what: Int) -> Int
{
    volunteerCounts[2] = 4
    return hello + what + volunteerCounts[2]
}
print(addLight(2, 3))
print(volunteerCounts)