import Cocoa

var myFirstInt = 0

for i in 1...5 {
    myFirstInt += i
    print(myFirstInt)
}

for i in 1...100 where i % 3 == 0 {
    myFirstInt += i
    print(i)
}

var i = 1
while i < 6 {
    myFirstInt += 1
    print(myFirstInt)
    i += 1
}

if !false {
    print("ok")
}

i = 100
for i in 1...100 {
    if i % 3 == 0 {
        if i % 5 == 0 {
            print("FIZZ BUZZ")
        } else {
            print("FIZZ")
        }
    } else if i % 5 == 0{
        print("BUZZ")
    } else {
        print(i)
    }
}
