#[derive(Debug)]
enum TrafficLight {
    Red,
    Yellow,
    Green,
}

use TrafficLight::*;
fn main() {
    let (red, yellow, green) = (Red, Yellow, Green);
    println!("{:?}, {:?}, {:?}", red, yellow, green);
}
