{-# LANGUAGE OverloadedStrings #-}

module Year2017.Day2.Solution where
import qualified Data.Text as T
import qualified Data.Text.IO as DTIO

ex :: [[Int]]
ex =
  [ [5, 1, 9, 5],
    [7, 5, 3],
    [2, 4, 6, 8]
  ]

-- The first row's largest and smallest values are 9 and 1, and their difference is 8.
-- The second row's largest and smallest values are 7 and 3, and their difference is 4.
-- The third row's difference is 6.
-- In this example, the spreadsheet's checksum would be 8 + 4 + 6 = 18.

-- |
-- >>> part1 ex
-- 18
part1 :: [[Int]] -> Int
part1 ls = sum $ fmap (\ints -> maximum ints - minimum ints ) ls

str1 :: T.Text
str1 = "1364 461 1438 1456 818 999 105 1065 314 99 1353 148 837 590 404 123"

-- |
-- >>> parse str1
-- [1364,461,1438,1456,818,999,105,1065,314,99,1353,148,837,590,404,123]
parse ss = fmap (\str -> read (T.unpack str) :: Int) (T.splitOn " " ss)

-- |
-- >>> answerInput2
-- 53460
answerInput2 = do
  inp <- T.lines <$> DTIO.readFile "src/year2017/Day2/input.txt"
  return $ part1 $ fmap parse inp