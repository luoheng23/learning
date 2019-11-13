
#[derive(Debug)]
struct Rectangle {
    width: u32,
    height: u32,
}

impl Rectangle {
    fn area(&self) -> u32 {
        return self.width * self.height;
    }

    fn can_hold(&self, rect: &Rectangle) -> bool {
        self.width >= rect.width && self.height >= rect.height
    }

    fn new(width: u32, height: u32) -> Rectangle {
        Rectangle {
            width,
            height,
        }
    }
}

// struct Color(i32, i32, i32);
// struct Point(i32, i32, i32);

// struct User {
//     username: &str,
//     email: &str,
//     sign_in_count: u64,
//     active: bool,
// }

fn main() {
    let rect1 = Rectangle { width: 30, height: 50};
    let rect2 = Rectangle { width: 10, height: 40};
    let rect3 = Rectangle { width: 60, height: 45};
    let rect4 = Rectangle::new(20, 30);
    println!("Can rect1 hold rect2? {}", rect1.can_hold(&rect2));
    println!("Can rect1 hold rect3? {}", rect1.can_hold(&rect3));
    println!("Can rect1 hold rect4? {}", rect1.can_hold(&rect4));
    // let user1 = User {
    //     email: "1301089462@qq.com",
    //     username: "luoheng",
    //     active: true,
    //     sign_in_count: 1,
    // };
    println!("The area of the rectangle is {} square pixels.", rect1.area());
    println!("rect1 is {:#?}", rect1);
}