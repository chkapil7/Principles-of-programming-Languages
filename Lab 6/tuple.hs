-- Define the sumTuple function
sumTuple :: (Int, Int) -> Int
sumTuple (x, y) = x + y  -- Pattern matching to extract the integers from the tuple

-- Main function
main :: IO ()
main = do
    putStrLn "Enter two integers separated by a comma (e.g., 3,5):"
    input <- getLine
    let tuple = read ("(" ++ input ++ ")") :: (Int, Int)  -- Convert input to a tuple of integers
    putStrLn $ "The sum of the tuple is: " ++ show (sumTuple tuple)

