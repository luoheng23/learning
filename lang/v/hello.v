
fn this(hello ...int) {
    for j in hello {
        print(j)
    }
}

fn main() {
    hello := [1, 2, 3, 4]
    this(hello...)
}