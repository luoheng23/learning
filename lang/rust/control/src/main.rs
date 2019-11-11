fn main() {
    let num = 7;

    if num < 5 {
        println!("condition was true",);
    } else if num > 7 {
        println!("condition was false");
    } else {
        println!("what's wrong");
    }
    let number = if true {
        if false {
            3
        } else {
            5
        }
    } else {
        5
    };
    println!("h{}!", number);
    loop {
        println!("Hello");
        break
    }
    let a = [1, 2, 3, 4];
    let mut index = 0;
    while index < 4 {
        println!("{} ", a[index]);
        index+=1;
    }
    for number in a.iter() {
        println!("{}!", number);
    }
}
