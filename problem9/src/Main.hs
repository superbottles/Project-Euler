module Main where
-- where c^2 = a^2 + b^2
-- find a,b,c where a + b + c = 1000, and a < b < c

-- Data type that holds the variables a,b,c from the Pythagorean Theorem
type Answer = (Float,Float,Float)

-- List of all valid Answer permutations within the problem set
problemSet :: [Answer]
problemSet = [(a,b,c) | a <- range, b <- range, c <- [pythag a b], a < b]
  where range = [1..1000] :: [Float]

pythag :: Floating a => a -> a -> a
pythag a b = sqrt ab
  where ab = (a^2) + (b^2)

prod :: Answer -> Float
prod (a,b,c) = a*b*c

problem :: Answer
problem = head $ filter p problemSet
  where p (a,b,c) = a + b + c == (1000 :: Float)

main :: IO ()
main = print $ prod problem
