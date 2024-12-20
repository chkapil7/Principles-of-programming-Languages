listZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
listZipWith _ [] [] = []
listZipWith f (x:xs) (y:ys) = f x y : listZipWith f xs ys
listZipWith _ _ _ = error "Lists must have the same length"

main :: IO ()
main = do
    putStrLn "Enter the first list of numbers (space-separated):"
    input1 <- getLine
    let list1 = map read (words input1) :: [Int]

    putStrLn "Enter the second list of numbers (space-separated):"
    input2 <- getLine
    let list2 = map read (words input2) :: [Int]

    putStrLn "Choose an operation (+, -, *, /):"
    operation <- getLine

    let result = case operation of
                    "+" -> listZipWith (+) list1 list2
                    "-" -> listZipWith (-) list1 list2
                    "*" -> listZipWith (*) list1 list2
                    "/" -> listZipWith (div) list1 list2
                    _   -> error "Invalid operation"
    
    print result

