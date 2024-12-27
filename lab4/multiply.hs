multiplyElements :: [Int] -> Int -> [Int]
multiplyElements xs n = [x * n | x <- xs]

main :: IO ()
main = do
    putStrLn "Enter a list of numbers (space-separated):"
    input <- getLine
    let nums = map read (words input) :: [Int]
    putStrLn "Enter a multiplier:"
    multiplier <- readLn :: IO Int
    let result = multiplyElements nums multiplier
    print result

