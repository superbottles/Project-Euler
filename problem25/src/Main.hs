module Main where

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

findIndex :: Integer -> [String] -> Integer
findIndex n (x:xs) = if length x >= 1000
                     then n
                     else findIndex (n + 1) xs

problem :: Integer
problem = findIndex 0 problemSet
  where problemSet = map show fibs

main :: IO ()
main = print problem
