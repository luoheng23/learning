fn main() {
    let mut v: Vec<i32> = Vec::new();
    let _v2 = vec![1, 2, 3];
    v.push(5);
    v.push(6);
    v.push(7);
    v.push(8);
    for i in &mut v {
        *i += 4;
    }
    for i in &v {
        println!("{}", i);
    }
}
