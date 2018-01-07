module Main where

problemSet :: Integer
--problemSet = sum $ [x^x | x <- [1..1000]]
problemSet = sum $ map (\x -> x^x) [1..1000]

problem :: Integer -> [Integer]
problem x = let newNum = x `div` 10
                digit = x `mod` 10
            in digit : problem newNum


main :: IO ()
main = print $ reverse (take 10 (problem problemSet))
