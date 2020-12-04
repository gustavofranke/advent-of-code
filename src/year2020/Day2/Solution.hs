module Day2.Solution where

import Inputs ( day2 )

data PolicyWithPasswd = PolicyWithPasswd
                      { mini :: Int
                      , maxi :: Int
                      , char :: Char
                      , pass :: String
                      }

mkPolicyPass :: String -> PolicyWithPasswd
mkPolicyPass str = PolicyWithPasswd (read minimu :: Int) (read maximu :: Int) (head charac) passwd
  where
    policy = takeWhile (/= ':') str
    minMax = takeWhile (/= ' ') policy
    minimu = takeWhile (/= '-') minMax
    maximu = tail $ dropWhile (/= '-') minMax
    charac = tail $ dropWhile (/= ' ') policy
    passwd = drop 2 $ dropWhile (/= ':') str

-- |
-- >>> isValidA (PolicyWithPasswd 2 5 'l' "fllxf")
-- True
-- 
-- >>> isValidA (PolicyWithPasswd 4 5 'r' "rrrjmrrrrrrh")
-- False
isValidA :: PolicyWithPasswd -> Bool
isValidA pwp = nbrChar >= mini pwp && nbrChar <= maxi pwp
   where
      nbrChar = length $ filter (== char pwp) (pass pwp)

parse :: (PolicyWithPasswd -> Bool) -> String -> Bool
parse isValid str = isValid $ mkPolicyPass str

answer :: (PolicyWithPasswd -> Bool) -> Int
answer isValid = length $ filter (==True) (map (parse isValid) Inputs.day2)

-- |
-- >>> day2a
-- 660
day2a :: Int
day2a = answer isValidA

-- |
-- >>> day2b
-- 530
day2b :: Int
day2b = answer isValidB

-- |
-- 1-3 a: abcde is valid: position 1 contains a and position 3 does not.
-- 1-3 b: cdefg is invalid: neither position 1 nor position 3 contains b.
-- 2-9 c: ccccccccc is invalid: both position 2 and position 9 contain c.
-- 
-- >>> isValidB (PolicyWithPasswd 1 3 'a' "abcde")
-- True
-- >>> isValidB (PolicyWithPasswd 1 3 'b' "cdefg")
-- False
-- 
-- >>> isValidB (PolicyWithPasswd 2 9 'c' "ccccccccc")
-- False
isValidB :: PolicyWithPasswd -> Bool
isValidB pwp = isInMax || isInMin
   where
      maxPos = pass pwp !! (maxi pwp - 1)
      minPos = pass pwp !! (mini pwp - 1)
      isInMax = maxPos == char pwp && minPos /= char pwp
      isInMin = maxPos /= char pwp && minPos == char pwp
