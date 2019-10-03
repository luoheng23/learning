
struct Rectangle {
    width: u32,
    height: u32,
}

impl Rectangle {
    fn area(&self) -> u32 {
        return self.width * self.height;
    }
}
fn main() {
    let mut rect1 = Rectangle { width: 30, height: 50};
    let _rect2 = rect1;
    rect1 = Rectangle { width: 20, height: 30};
    println!("The area of the rectangle is {} square pixels.", rect1.area());
    println!("{:#?}", rect1);
}