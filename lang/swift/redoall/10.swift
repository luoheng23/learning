
var dict1 = Dictionary<String, Double>()

dict1 = ["Donnie Darko": 4, "Chungking Express": 5, "Dark City": 4]
print(dict1)


for (key, value) in dict1 {
    print(key, value)
}
for key in dict1.keys {
    print(key)
}
for value in dict1.values {
    print(value)
}