use std::io;

fn main() {
    let mut input1 = String::new();
    let mut input2 = String::new();

    println!("Enter first integer: ");
    io::stdin().read_line(&mut input1).expect("Failed to read input");
    
    println!("Enter second integer: ");
    io::stdin().read_line(&mut input2).expect("Failed to read input");

    let num1: i32 = input1.trim().parse().expect("Please enter a valid number");
    let num2: i32 = input2.trim().parse().expect("Please enter a valid number");

    println!("Addition: {}", num1 + num2);
    println!("Subtraction: {}", num1 - num2);
    println!("Multiplication: {}", num1 * num2);
    
    if num2 != 0 {
        println!("Division: {}", num1 / num2);
        println!("Modulo: {}", num1 % num2);
    } else {
        println!("Division and modulo operations are not possible (division by zero).");
    }
}
