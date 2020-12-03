module Day2.Solution where

import Inputs

-- |
-- >>> isValidA 2 5 'l' "fllxf"
-- True
-- 
-- >>> isValidA 4 5 'r' "rrrjmrrrrrrh"
-- False
isValidA :: Int -> Int -> Char -> String -> Bool
isValidA mini maxi char pass = nbrChar >= mini && nbrChar <= maxi
   where
      nbrChar = length $ filter (== char) pass

-- isValidA is for getting day2a answer --> 660
-- isValidB is for getting day2b answer --> 530
parsePolicyPass :: String -> Bool
parsePolicyPass str = isValidB (read minimu :: Int) (read maximu :: Int) (head charac) passwd
   where
      policy = takeWhile (/= ':') str
      minMax = takeWhile (/= ' ') policy
      minimu = takeWhile (/= '-') minMax
      maximu = tail $ dropWhile (/= '-') minMax
      charac = tail $ dropWhile (/= ' ') policy
      passwd = drop 2 $ dropWhile (/= ':') str

day2a = length $ filter (==True) (map parsePolicyPass Inputs.day2)

-- 1-3 a: abcde is valid: position 1 contains a and position 3 does not.
-- 1-3 b: cdefg is invalid: neither position 1 nor position 3 contains b.
-- 2-9 c: ccccccccc is invalid: both position 2 and position 9 contain c.
isValidB :: Int -> Int -> Char -> String -> Bool
isValidB min max char pass = isInMax || isInMin
   where
      maxPos = pass !! (max - 1)
      minPos = pass !! (min - 1)
      isInMax = maxPos == char && minPos /= char
      isInMin = maxPos /= char && minPos == char
