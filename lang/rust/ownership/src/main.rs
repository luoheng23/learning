fn main() {
    let s2: String;
    {
        let s1 = "hello";
        s2 = s1.to_string();

        println!("{}, world!", s1);

    }
    println!("{}", s2);
}

