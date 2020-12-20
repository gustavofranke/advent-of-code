{-# LANGUAGE OverloadedStrings #-}

module Year2015.Day2.Solution where

import qualified Data.Text as T
import qualified Data.Text.IO as DTIO
import Data.List ( sort )

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