module Day10.Solution where

import Data.List
import Control.Arrow

--                 when using every adapter, there are  7 differences of 1 jolt and  5 differences of 3 jolts
-- in a chain that uses all of the adapters, there are 22 differences of 1 jolt and 10 differences of 3 jolts

-- What is the number of 1-jolt differences multiplied by the number of 3-jolt differences?

-- each of your joltage adapters is rated for a output joltage => your puzzle input

-- any adapter can take an input 1, 2, or 3 jolts lower
-- your device has a built-in joltage adapter rated for 3 jolts higher than the highest-rated adapter in your bag

-- In this example, when using every adapter, there are 7 differences of 1 jolt and 5 differences of 3 jolts.

ex1 :: [Int]
ex1 =
  [ 16,
    10,
    15,
    5,
    1,
    11,
    7,
    19,
    6,
    12,
    4
  ]

-- |
-- >>> sanitised ex1
-- [0,1,4,5,6,7,10,11,12,15,16,19,22]
sanitised :: (Num a, Ord a) => [a] -> [a]
sanitised x = 0 : sort x ++ [maximum x + 3]

-- |
-- >>> sanitisedWithGaps ex1
-- [(0,1),(1,4),(4,5),(5,6),(6,7),(7,10),(10,11),(11,12),(12,15),(15,16),(16,19),(19,22)]
sanitisedWithGaps :: (Num b, Ord b) => [b] -> [(b, b)]
sanitisedWithGaps x = sanitised x `zip` tail (sanitised x)

-- |
-- >>> diffOf (1,4)
-- 3
-- 
-- >>> diffOf (4,5)
-- 1
diffOf :: (Eq a, Num a, Num p) => (a, a) -> p
diffOf (x, y)
    | y - x == 1 = 1
    | y - x == 3 = 3
    | otherwise = error "oh no!"

-- |
-- >>> onesAndThrees ex1
-- [1,3,1,1,1,3,1,1,3,1,3,3]
onesAndThrees :: (Num a, Num b, Ord a) => [a] -> [b]
onesAndThrees ls = diffOf <$> sanitisedWithGaps ls -- fmap diffOf $ sanitisedWithGaps ls

-- |
-- >>> parts ex1
-- ([1,1,1,1,1,1,1],[3,3,3,3,3])
parts :: (Num a1, Num a2, Ord a2, Eq a1) => [a2] -> ([a1], [a1])
parts ls = partition (== 1) $ onesAndThrees ls

-- |
-- >>> counts ([1,1,1,1,1,1,1],[3,3,3,3,3])
-- (7,5)
counts :: (Foldable t1, Foldable t2) => (t1 a1, t2 a2) -> (Int, Int)
counts (os, ts) = (length os, length ts)

-- |
-- >>> answerTuple ex1
-- (7,5)
answerTuple :: (Num a2, Ord a2) => [a2] -> (Int, Int)
answerTuple  = counts . parts

ex2 :: [Int]
ex2 = [28,33,18,42,31,14,46,20,48,47,24,23,49,45,19,38,39,11,1,32,25,35,8,17,7,9,4,2,34,10,3]

example :: IO (Int, Int)
example = do
  inp <- lines <$> readFile "src/year2020/Day10/example.txt"
  return $ answerTuple $ fmap (\x -> read x :: Int) inp

-- | answer to problem is 64*37=2368
-- >>> input
-- (64,37)
input :: IO (Int, Int)
input = do
  inp <- lines <$> readFile "src/year2020/Day10/input.txt"
  return $ answerTuple $ fmap (\x -> read x :: Int) inp

