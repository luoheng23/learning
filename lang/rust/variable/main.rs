
fn main() {
    let x = 5;
    println!("The value of x is: {}", x);
    let _t = true;

    let _f: bool = false;
    let tup: (i32, f64, u8) = (500, 6.4, 1);

    let (x, y, z) = tup;

    println!("{} {} {}", x, y, z);
    let tup: (i32, f64) = (500, 6.4);
    println!("{} {}", tup.0, tup.1);

    let _a = [1, 2, 3, 4 , 5];
    let index;
    index = 10;
    let _element = _a[index];
}