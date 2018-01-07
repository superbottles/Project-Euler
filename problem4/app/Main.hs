module Main where

import Data.List

isPalindrome :: Int -> Bool
isPalindrome x
  | str == reverse str = True
  | otherwise = False
  where str = show x

-- All possible products between 2 three digit numbers
products :: [Int]
products = [x*y | x <- range, y <- range]
  where range = [999,998..100]

problem :: Int
problem = last $ sort problemSet
  where problemSet = filter isPalindrome products

main :: IO ()
main = do
  print $ problem
