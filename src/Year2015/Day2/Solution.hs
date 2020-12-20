{-# LANGUAGE OverloadedStrings #-}

module Year2015.Day2.Solution where

import Data.List (sort)
import qualified Data.Text as T
import qualified Data.Text.IO as DTIO

-- |
-- >>> area 2 3 4
-- 58
-- >>> area 1 1 10
-- 43
area :: Int -> Int -> Int -> Int
area l w h = surface + smallest
  where
    surface = 2 * l * w + 2 * w * h + 2 * h * l
    smallest = product (take 2 $ sort [l, w, h])

parse :: T.Text -> [Int]
parse ls = (\str -> (read (T.unpack str) :: Int)) <$> T.splitOn "x" ls

-- |
-- >>> answerInput
-- 1586300
answerInput :: IO Int
answerInput = do
  inp <- T.lines <$> DTIO.readFile "src/year2015/Day2/input.txt"
  return $ sum (fmap (\xs -> area (xs !! 0) (xs !! 1) (xs !! 2)) (parse <$> inp))

------------
-- The ribbon required to wrap a present is the shortest distance around its sides, or the smallest perimeter of any one face.
-- Each present also requires a bow made out of ribbon as well;
-- the feet of ribbon required for the perfect bow is equal to the cubic feet of volume of the present.

-- For example:

-- 2x3x4 requires 2+2+3+3 = 10 feet of ribbon to wrap the present plus 2*3*4 = 24 feet of ribbon for the bow, for a total of 34 feet.
-- 1x1x10 requires 1+1+1+1 = 4 feet of ribbon to wrap the present plus 1*1*10 = 10 feet of ribbon for the bow, for a total of 14 feet.

-- |
-- >>> ribbon 2 3 4
-- 34
-- >>> ribbon 1 1 10
-- 14
ribbon :: Int -> Int -> Int -> Int
ribbon l w h = shortest + bow
  where
    shortest = sum (take 2 (sort [l, w, h]) ++ take 2 (sort [l, w, h]))
    bow = l * w * h

-- |
-- >>> answerInput2
-- 3737498
answerInput2 :: IO Int
answerInput2 = do
  inp <- T.lines <$> DTIO.readFile "src/year2015/Day2/input.txt"
  return $ sum (fmap (\xs -> ribbon (xs !! 0) (xs !! 1) (xs !! 2)) (parse <$> inp))
