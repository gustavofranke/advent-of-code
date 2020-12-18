module Year2017.Day1.Solution where

import Data.Char

-- |
-- >>> answerPart1 [1, 1, 2, 2]
-- 3
-- >>> answerPart1 [1, 1, 1, 1]
-- 4
-- >>> answerPart1 [1, 2, 3, 4]
-- 0
-- >>> answerPart1 [9, 1, 2, 1, 2, 1, 2, 9]
-- 9
answerPart1 :: [Int] -> Int
answerPart1 qs = go $ qs ++ [head qs]
  where
    go [] = 0
    go [_] = 0
    go (l1 : l2 : ls) =
      if l1 == l2
        then l1 + go (l2 : ls)
        else go (l2 : ls)

-- |
-- >>> part1
-- 1393
part1 :: IO Int
part1 = do
  inp <- lines <$> readFile "src/Year2017/Day1/input.txt"
  return $ answerPart1 $ digitToInt <$> head inp

