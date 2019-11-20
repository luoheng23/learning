
var myFirstInt = 0

for i in 1...5 {
    myFirstInt += 1
    print("myFirstInt equals \(myFirstInt) at iteration \(i)")
}

for i in 1...50 where i % 3 == 0 {
    print(i)
}