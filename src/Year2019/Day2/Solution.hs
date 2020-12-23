module Year2019.Day2.Solution where

import qualified Data.Text as T
import qualified Data.Text.IO as DTIO

-- opcode - either 1, 2, or 99
-- 99 means that the program is finished and should immediately halt.
-- Encountering an unknown opcode means something went wrong.

-- Once you're done processing an opcode, move to the next one by stepping forward 4 positions.

-- What value is left at position 0 after the program halts

ex :: [Int]
ex = [
  1,9,10,3,
  2,3,11,0,
  99,
  30,40,50
  ]

-- |
-- idea is to return a new list with the modif value for ops 1 and 2,
-- then the rec processes the latest one
-- Step forward 4 positions to reach the next opcode, is handled in rec
-- >>> asdf (head ex) 0 ex
-- [3500]
asdf :: Int -> Int -> [Int] -> [Int]
asdf 1 idx ls = asdf (list !! (idx + 4)) (idx + 4) list
    where list = take (ls !! (idx + 3)) ls ++ [(ls !! (ls !! (idx + 1))) + (ls !! (ls !! (idx + 2)))] ++ drop (ls !! (idx + 3) + 1) ls
asdf 2 idx ls = asdf (list !! (idx + 4)) (idx + 4) list
    where list = take (ls !! (idx + 3)) ls ++ [(ls !! (ls !! (idx + 1))) * (ls !! (ls !! (idx + 2)))] ++ drop (ls !! (idx + 3) + 1) ls
asdf 99 _ ls = [head ls] 
asdf _ _ ls = ls 

parse :: T.Text -> [Int]
parse ls = (\str -> (read (T.unpack str) :: Int)) <$> T.splitOn (T.pack ",") ls

-- |613521 is too low
-- >>> answerInput1
-- [613521]
answerInput1 = do
  inp <- T.lines <$> DTIO.readFile "src/year2019/Day2/input.txt"
  let list = parse(head inp)
  return (asdf (head list) 0 list)

{-
-- _____>>> asdf 1 0 ex
-- _____[1,9,10,70,2,3,11,0,99,30,40,50]
-- _____>>> asdf 2 4 (asdf 1 0 ex)
-- _____[3500,9,10,70,2,3,11,0,99,30,40,50]
-- _____>>> asdf 99 8 (asdf 2 4 (asdf 1 0 ex))
-- _____[3500]
-}
{-
[
    1,9,10,70,
    2,3,11,0,
    99,
    30,40,50]
[
    1,9,10,70,
    2,3,11,3500,
    99,
    30,40,50]
-}
