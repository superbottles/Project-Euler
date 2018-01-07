module Main where

import Data.Numbers.Primes

main :: IO ()
main = print $ sum (takeWhile isBelow primes)
  where isBelow x = x < 2000000
