module Main where

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

problem :: Integer
problem = sum problemSet
  where problemSet = takeWhile (<= limit) evenNums
        evenNums = filter even fibs
        limit = 4000000

main :: IO ()
main = do
  print $ problem
