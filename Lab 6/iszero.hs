-- Define the isZero function
isZero :: Int -> String
isZero 0 = "Zero"
isZero _ = "Not Zero"

-- Main function
main :: IO ()
main = do
    putStrLn "Enter an integer:"
    input <- getLine                      -- Read input from the user
    let number = read input :: Int        -- Convert the input to an Int
    putStrLn $ "Result: " ++ isZero number

