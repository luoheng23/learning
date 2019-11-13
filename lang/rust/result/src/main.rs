
use std::fs::File;

fn main() {
    let f = match File::open("Cargo.toml") {
        Ok(file) => file,
        Err(error) => {
            panic!("There was a problem opening the file: {:?}", error)
        },
    };
}
