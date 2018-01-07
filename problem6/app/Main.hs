module Main where

-- First
sumOfSquares :: [Integer] -> Integer
sumOfSquares = sum . map (^2)

-- Second
squareOfSum :: [Integer] -> Integer
squareOfSum = (^2) . sum

difference :: [Integer] -> Integer
difference nums = first - second
  where first = squareOfSum nums
        second = sumOfSquares nums

problem :: Integer
problem = difference problemSet
  where problemSet = [1..100]

main :: IO ()
main = print $ problem
