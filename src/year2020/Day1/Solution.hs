module Day1.Solution where

import Inputs

input :: [Integer]
input = Inputs.day1

-- |
-- >>> day1a
-- [(1547,473)]
-- 
-- >>> 1547 + 473
-- 2020
-- 
-- >>> 1547 * 473
-- 731731
day1a :: [(Integer, Integer)]
day1a =
  [ (x, y) | x <- input -- x * y
           , y <- input
           , x > y
           , x + y == 2020
  ]

-- |
-- >>> day1b
-- [(1433,365,222)]
-- 
-- >>> 1433 + 365 + 222
-- 2020
-- 
-- >>> 1433 * 365 * 222
-- 116115990
day1b :: [(Integer, Integer, Integer)]
day1b =
  [ (x, y, z) | x <- input -- x * y * z
              , y <- input
              , x > y
              , z <- input
              , y > z
              , x + y + z == 2020
  ]