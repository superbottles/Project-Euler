module Main where


-- isDivisible checks whether a number is evenly divisible by multiple numbers
isDivisible :: Int -> Bool
isDivisible n = all modTest nums
  where modTest x = (n `mod` x) == 0
        nums = [1..20]

problem :: Int
problem = head [x | x <- [1..], isDivisible x]

main :: IO ()
main = print $ problem
