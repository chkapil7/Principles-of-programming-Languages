countElements :: [a] -> Int
countElements [] = 0                   
countElements (_:xs) = 1 + countElements xs -- Recursive case: Count the first element and the rest

main :: IO ()
main = do
    putStrLn "Enter a list of integers (comma-separated, e.g., 1,2,3):"
    input <- getLine
    let list = read ("[" ++ input ++ "]") :: [Int] 
    putStrLn $ "The number of elements in the list: " ++ show (countElements list)
