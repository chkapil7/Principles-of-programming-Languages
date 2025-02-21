use std::io;

fn main() {
    let mut input = String::new();

    println!("Enter a number: ");
    io::stdin().read_line(&mut input).expect("Failed to read input");

    let num: i32 = input.trim().parse().expect("Please enter a valid number");

    if num > 0 {
        println!("The number is positive.");
    } else if num < 0 {
        println!("The number is negative.");
    } else {
        println!("The number is zero.");
    }
}

