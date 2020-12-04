module Day1.Solution where

import Inputs ( day1 )

-- |
-- >>> day1a Inputs.day1
-- [(1547,473)]
-- 
-- >>> 1547 + 473
-- 2020
-- 
-- >>> 1547 * 473
-- 731731
day1a :: [Integer] -> [(Integer, Integer)]
day1a input =
  [ (x, y) | x <- input -- x * y
           , y <- input
           , x > y
           , x + y == 2020
  ]

-- |
-- >>> day1b Inputs.day1
-- [(1433,365,222)]
-- 
-- >>> 1433 + 365 + 222
-- 2020
-- 
-- >>> 1433 * 365 * 222
-- 116115990
day1b :: [Integer] -> [(Integer, Integer, Integer)]
day1b input =
  [ (x, y, z) | x <- input -- x * y * z
              , y <- input
              , x > y
              , z <- input
              , y > z
              , x + y + z == 2020
  ]