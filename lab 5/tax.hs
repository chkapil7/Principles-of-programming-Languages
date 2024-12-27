module Main where

-- Define the tax slabs and rates for both regimes
oldTaxSlabs :: [(Double, Double)]
oldTaxSlabs = [(250000, 0.05), (500000, 0.2), (1000000, 0.3)]

newTaxSlabs :: [(Double, Double)]
newTaxSlabs = [(250000, 0.05), (500000, 0.1), (750000, 0.15), (1000000, 0.2), (1250000, 0.25), (1500000, 0.3)]

-- Generalized tax calculation function
calculateTax :: Double -> [(Double, Double)] -> Double
calculateTax income slabs = sum $ zipWith calc slabs (0 : map fst slabs)
  where
    calc (limit, rate) prevLimit = max 0 (min income limit - prevLimit) * rate

-- Main function
main :: IO ()
main = do
    -- Get the annual income from the user
    putStrLn "Enter your annual income:"
    income <- readLn :: IO Double

    -- Calculate tax for both regimes
    let oldRegimeTax = calculateTax income oldTaxSlabs
    let newRegimeTax = calculateTax income newTaxSlabs

    -- Display the results
    putStrLn $ "Tax under Old Regime: " ++ show oldRegimeTax
    putStrLn $ "Tax under New Regime: " ++ show newRegimeTax

