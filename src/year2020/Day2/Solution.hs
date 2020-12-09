module Day2.Solution where

import Text.Parsec
    ( anyChar, char, digit, letter, space, many1, parse )
import Text.Parsec.String (Parser)

data PolicyWithPasswd = PolicyWithPasswd
  { mini :: Int,
    maxi :: Int,
    chara :: Char,
    pass :: String
  }
--   deriving (Show)

-- | <min>dash<max>space<char>semicolonSpacePasswd
--    "4-5 r: rrrjmrrrrrrh",
policyPassParsers :: Parser PolicyWithPasswd
policyPassParsers = do
  minm <- many1 digit
  _    <- char '-'
  maxm <- many1 digit
  _    <- space
  cha  <- anyChar
  _    <- char ':'
  _    <- space
  pasw <- many1 letter
  return $ PolicyWithPasswd (read minm :: Int) (read maxm :: Int) cha pasw

-- |
-- >>> isValidA (PolicyWithPasswd 2 5 'l' "fllxf")
-- True
--
-- >>> isValidA (PolicyWithPasswd 4 5 'r' "rrrjmrrrrrrh")
-- False
isValidA :: PolicyWithPasswd -> Bool
isValidA pwp = nbrChar >= mini pwp && nbrChar <= maxi pwp
  where
    nbrChar = length $ filter (== chara pwp) (pass pwp)

parse1 :: (PolicyWithPasswd -> Bool) -> PolicyWithPasswd -> Bool
parse1 isValid = isValid

answer :: [PolicyWithPasswd] -> (PolicyWithPasswd -> Bool) -> Int
answer list isValid = length $ filter (== True) (map (parse1 isValid) list)

-- |
-- >>> day2aAnswer
-- 660
day2aAnswer :: IO Int
day2aAnswer = do
  inp <- lines <$> readFile "src/year2020/Day2/input.txt"
  let Right policyPasswds = traverse (parse policyPassParsers "line") inp
  return $ day2a policyPasswds

day2a :: [PolicyWithPasswd] -> Int
day2a list = answer list isValidA

-- |
-- >>> day2bAnswer
-- 530
day2bAnswer :: IO Int
day2bAnswer = do
  inp <- lines <$> readFile "src/year2020/Day2/input.txt"
  let Right policyPasswds = traverse (parse policyPassParsers "line") inp
  return $ day2b policyPasswds

day2b :: [PolicyWithPasswd] -> Int
day2b list = answer list isValidB

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
    isInMax = maxPos == chara pwp && minPos /= chara pwp
    isInMin = maxPos /= chara pwp && minPos == chara pwp
