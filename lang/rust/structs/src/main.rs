
#[derive(Debug)]
struct Rectangle {
    width: u32,
    height: u32,
}

impl Rectangle {
    fn area(&self) -> u32 {
        return self.width * self.height;
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
    let _rect2 = Rectangle { ..rect1 };
    // let user1 = User {
    //     email: "1301089462@qq.com",
    //     username: "luoheng",
    //     active: true,
    //     sign_in_count: 1,
    // };
    println!("The area of the rectangle is {} square pixels.", rect1.area());
    println!("rect1 is {:#?}", rect1);
}