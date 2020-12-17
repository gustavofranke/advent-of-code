module Year2020.Day1.Solution where

-- >>> day1aAnswer
-- [(1547,473)]
-- 
-- >>> 1547 + 473
-- 2020
-- 
-- >>> 1547 * 473
-- 731731
day1aAnswer :: IO [(Integer, Integer)]
day1aAnswer = do
  inp <- readFile "src/year2020/Day1/input.txt"
  return $ day1a $ (\s -> read s :: Integer) <$> lines inp

-- >>> day1bAnswer
-- [(1433,365,222)]
-- 
-- >>> 1433 + 365 + 222
-- 2020
-- 
-- >>> 1433 * 365 * 222
-- 116115990
day1bAnswer :: IO [(Integer, Integer, Integer)]
day1bAnswer = do
  inp <- readFile "src/year2020/Day1/input.txt"
  return $ day1b $ (\s -> read s :: Integer) <$> lines inp

day1a :: [Integer] -> [(Integer, Integer)]
day1a input =
  [ (x, y) | x <- input -- x * y
           , y <- input
           , x > y
           , x + y == 2020
  ]

day1b :: [Integer] -> [(Integer, Integer, Integer)]
day1b input =
  [ (x, y, z) | x <- input -- x * y * z
              , y <- input
              , x > y
              , z <- input
              , y > z
              , x + y + z == 2020
  ]