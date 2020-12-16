module Day16.Solution where

-- class: 1-3 or 5-7
-- row: 6-11 or 33-44
-- seat: 13-40 or 45-50

-- your ticket:
-- 7,1,14

-- nearby tickets:
-- 7,3,47
-- 40,4,50
-- 55,2,20
-- 38,6,12

import Data.List
classExample :: [Int]
classExample = [1..3] ++ [5..7]

rowExample :: [Int]
rowExample = [6..11] ++ [33..44]

seatExample :: [Int]
seatExample = [13..40] ++ [45..50]

nearbyTicketsExample :: [[Int]]
nearbyTicketsExample =
  [ [7, 3, 47],
    [40, 4, 50],
    [55, 2, 20],
    [38, 6, 12]
  ]


-- >>> a
-- False
a = 4 `elem` classExample

-- >>> b
-- True
b = 5 `elem` classExample

-- >>> c
-- [4,55,12]
c = nearbyTicketsExample >>= filter (`notElem` (nub $ classExample ++ rowExample ++ seatExample))

