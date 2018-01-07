module Main where

isMultiple :: Int -> Int -> Bool
isMultiple x y = y `mod` x == 0

problemSet :: [Int]
problemSet = filter isMult3or5 [1..999]
  where isMult3 = isMultiple 3
        isMult5 = isMultiple 5
        isMult3or5 x = (isMult3 x) || (isMult5 x)

main :: IO ()
main = print $ sum problemSet
