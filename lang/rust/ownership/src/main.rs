fn main() {
    let s2: String;
    {
        let s1 = "hello";
        s2 = s1.to_string();

        println!("{}, world!", s1);

    }
    println!("{}", s2);
}

fn owner() {
    let mut s = String::from("hello");
    change(&mut s);
}

fn change(some_string: &mut String) {
    some_string.push_str(", world");
}