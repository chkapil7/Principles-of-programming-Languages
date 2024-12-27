-- Function to swap the elements of a tuple
swapTuple :: (a, b) -> (b, a)
swapTuple (x, y) = (y, x)

-- Main program
main :: IO ()
main = do
    -- User Input
    putStrLn "\nInput: Please enter two elements separated by space to form a tuple."
    input <- getLine
    
    let inputs = words input
    
    -- Validate Input
    if length inputs /= 2
        then putStrLn "\nError: You must enter exactly two elements."
        else do
            let (x:y:_) = inputs  -- Extract the two elements
                originalTuple = (x, y)
                swappedTuple = swapTuple originalTuple
            
            -- Output
            putStrLn $ "Swapped tuple: " ++ show swappedTuple

