data Color = Red | Green | Blue
    deriving (Show)  


describeColor :: Color -> String
describeColor Red = "This is Red"
describeColor Green = "This is Green"
describeColor Blue = "This is Blue"


main :: IO ()
main = do
    putStrLn (describeColor Red)    -- Output: This is Red
    putStrLn (describeColor Green)  -- Output: This is Green
    putStrLn (describeColor Blue)   -- Output: This is Blue

