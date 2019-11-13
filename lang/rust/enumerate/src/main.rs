#[derive(Debug)]
enum  IpAddrKind {
    V4(String),
    V6(String),
}

enum _Message {
    Quit,
    Move {x: i32, y: i32},
    Write(String),
    ChangColor (i32, i32, i32),
}

fn main() {
    let four = IpAddrKind::V4(String::from("127.0.0.1"));
    let six = IpAddrKind::V6(String::from("::1"));
    println!("{:?}, {:?}", four, six);
    let some_number = Some(5);
    match some_number {
        Some(3) => println!("1"),
        Some(_s) => println!("2"),
        _       => println!("3"),
    }
    let _some_string = Some("a string");
    let _absent_number: Option<i32> = None;
    if (1, 2, 3) == (1, 2, 3) {
        println!("hello");
    }
    if let Some(5) = some_number {
        println!("hello2");
    }
}
