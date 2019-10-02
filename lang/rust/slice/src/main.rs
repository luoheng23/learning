fn main() {
    println!("Hello, world!");
}

fn first_word(s: &String) -> usize {
    let bytes = s.as_bytes();

    for (i, &item) in byte.iter().enumerate() {
        if item == b' ' {
            return i;
        }
    }

    return s.len();
}
