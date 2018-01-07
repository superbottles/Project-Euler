module Main where

import Data.Numbers.Primes

main :: IO ()
main = do
  print $ last (primeFactors input)
    where input = 600851475143
