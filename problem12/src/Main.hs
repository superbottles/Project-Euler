module Main where


triangleNum :: Integer -> Integer
triangleNum x = sum [1..x]

triangleNums :: [Integer]
triangleNums = scanl1 (+) [1..]

listFactors :: Integer -> [Integer]
listFactors x = filter (/= 0) (map (isFactor x) [1..x])
  where isFactor x y
          | x `mod` y == 0 = y
          | otherwise = 0

problem :: Integer
problem = head problemSet
  where problemSet = filter pred triangleNums
        triangleNums = map (triangleNum) [1..]
        pred x = if length (listFactors x) > 500
                 then True
                 else False

main :: IO ()
main = print problem
