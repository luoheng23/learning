fn largest<T>(list: &[T]) -> T {
    let mut largest = list[0];
    for &item in list.iter() {
        if item > largest {
            largest = item;
        }
    }
    largest
}

fn main() {
    let num_list = vec![34, 50, 25, 100, 65];

    let res = largest(&num_list);
    println!("number: {}", res);

    let char_list = vec!['y', 'm', 'a', 'q'];
    let res = largest(&char_list);
    println!("Char: {}", res);
}
