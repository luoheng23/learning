
#[derive(Debug)]
struct Rectangle {
    width: u32,
    height: u32,
}


fn main() {
    let mut rect1 = Rectangle { width: 30, height: 50};
    let _rect2 = rect1;
    rect1 = Rectangle { width: 20, height: 30};
    println!("The area of the rectangle is {} square pixels.", area(&rect1));
    println!("{:?}", rect1);
}

fn area(rectangle: &Rectangle) -> u32 {
    return rectangle.width * rectangle.height;
}