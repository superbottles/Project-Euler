module Main where

import Data.List (sort, elemIndex)

processDigit :: Int -> Int
processDigit x
  | x == 1 = 0
  | even x = x `div` 2
  | odd x = (x * 3) + 1

createChain :: Int -> [Int]
createChain x = (takeWhile (/= 0) (iterate processDigit x))



problemSet :: [Int]
problemSet = [999999,999997..]

problemSetChains :: [[Int]]
problemSetChains = map createChain problemSet

chainLengths :: [Int]
chainLengths = map length (take 20 problemSetChains)


main :: IO ()
main = undefined
