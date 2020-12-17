module Year2020.Day6.Solution where

import Data.List ( intersect, nub )
import Year2020.Inputs ( day6 )

day6Example :: [Char]
day6Example =
  "abc"
    ++ "\n"
    ++ "a"
    ++ "b"
    ++ "c"
    ++ "\n"
    ++ "ab"
    ++ "ac"
    ++ "\n"
    ++ "a"
    ++ "a"
    ++ "a"
    ++ "a"
    ++ "\n"
    ++ "b"

-- |
-- >>> day6a day6Example
-- 11
day6a :: String -> Int
day6a cs = sum $ map (length . nub) (lines cs)

-- |
-- >>> day6aAnswer
-- 15724
day6aAnswer :: IO Int -- DOESN'T WORK
day6aAnswer = do
  inp <- readFile "src/year2020/Day6/input.txt"
  pure $ day6a inp

-- >>> day6aAnswer2
-- 6878
day6aAnswer2 :: Int
day6aAnswer2 = day6a Year2020.Inputs.day6
-------------------------------------------------------------
-- exa <- readFile "src/year2020/Day6/example.txt"
-- lines exa
-- ["abc","","a","b","c","","ab","ac","","a","a","a","a","","b"]
-- lines day6ExampleB ==  lines exa
-- True
day6ExampleB :: [Char]
day6ExampleB =
  "abc\n"
    ++ "\n"
    ++ "a\n"
    ++ "b\n"
    ++ "c\n"
    ++ "\n"
    ++ "ab\n"
    ++ "ac\n"
    ++ "\n"
    ++ "a\n"
    ++ "a\n"
    ++ "a\n"
    ++ "a\n"
    ++ "\n"
    ++ "b\n"

asdf :: Eq a => [[a]] -> [a]
asdf ls = foldl intersect (head ls) ls

qwer :: [[Char]] -> [[[Char]]]
qwer [] = []
qwer ls = tw : qwer dw
  where
    tw = takeWhile (/= "") ls
    dw = if null (dropWhile (/= "") ls) then [] else tail $ dropWhile (/= "") ls

day6b :: [[Char]] -> Int
day6b ls = sum $ map (length . asdf) $ qwer ls

-- |
-- >>> day6bAnswer
-- 6
day6bAnswer :: IO Int
day6bAnswer = do
  inp <- readFile "src/year2020/Day6/example.txt"
  pure $ day6b (lines inp)

-- |
-- >>> day6bAnswerAnswer
-- 3464
day6bAnswerAnswer :: IO Int
day6bAnswerAnswer = do
  inp <- readFile "src/year2020/Day6/input.txt"
  pure $ day6b (lines inp)
